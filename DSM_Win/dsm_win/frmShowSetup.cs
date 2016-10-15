using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

namespace dsm_win
{
    public partial class frmShowSetup : Form
    {
        private string _connString = "";
        private Guid _user_ID;
        private Guid _clubID;
        private Guid _showID;
        private string _show_Year_ID;
        private string _show_Type_ID;
        private Guid _venueID;

        public frmShowSetup(Guid clubID)
        {
            _clubID = clubID;
            InitializeComponent();
        }

        private void frmShowSetup_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();

            Guid? userID = Utils.SetUserID();
            if (userID != null)
            {
                _user_ID = (Guid)userID;
            }
            PopulateShows(_clubID);
            InitializeTimePickers();
        }


        private void InitializeTimePickers()
        {
            dteShowTime.Format = DateTimePickerFormat.Time;
            dteShowTime.ShowUpDown = true;
            dteShowTime.Width = 100;

            dteJudgingCommences.Format = DateTimePickerFormat.Time;
            dteJudgingCommences.ShowUpDown = true;
            dteJudgingCommences.Width = 100;
        }

        private void PopulateShows(Guid club_ID)
        {
            cboShows.Items.Clear();
            Shows shows = new Shows(Utils.ConnectionString());
            List<Shows> showList = shows.GetShowsByClub_ID(club_ID);
            ComboBoxItem item = null;
            foreach (Shows show in showList)
            {
                item = new ComboBoxItem();
                item.Text = show.Show_Name;
                item.Value = show.Show_ID;

                cboShows.Items.Add(item);
            }
            item = new ComboBoxItem();
            item.Text = "Add New";
            item.Value = null;

            cboShows.Items.Add(item);
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void cboShows_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboShows.SelectedItem.ToString() != "Add New")
            {
                _showID = new Guid((cboShows.SelectedItem as ComboBoxItem).Value.ToString());
                PopulateShow();
            }
            else
            {
                _showID = new Guid();
                PopulateShowYears("");
                PopulateShowTypes("");
                PopulateVenues("");
            }
        }

        private void PopulateShow()
        {
            Shows show = new Shows(_connString, _showID);
            _show_Year_ID = show.Show_Year_ID.ToString();
            PopulateShowYears(_show_Year_ID);
            _show_Type_ID = show.Show_Type_ID.ToString();
            PopulateShowTypes(_show_Type_ID);
            txtShowName.Text = show.Show_Name;
            _venueID = new Guid(show.Venue_ID.ToString());
            PopulateVenues(_venueID.ToString());
            dteShowDate.Value = DateTime.Parse(show.Show_Opens.ToString());
            dteShowTime.Value = DateTime.Parse(show.Show_Opens.ToString());
            dteJudgingCommences.Value = DateTime.Parse(show.Judging_Commences.ToString());
            dteEntryClosingDate.Value = DateTime.Parse(show.Closing_Date.ToString());
            numClassesPerDog.Value = decimal.Parse(show.MaxClassesPerDog.ToString());
        }

        private void PopulateShowYears(string val)
        {
            ShowYears showYears = new ShowYears(_connString);
            List<ShowYears> lkpShowYears = showYears.GetShow_Years();
            foreach (ShowYears showYear in lkpShowYears)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Text = showYear.Show_Year;
                item.Value = showYear.Show_Year_ID;

                cboShowYears.Items.Add(item);
                if (showYear.Show_Year_ID.ToString() == val)
                {
                    cboShowYears.Text = showYear.Show_Year;
                }
            }
        }

        private void PopulateShowTypes(string val)
        {
            ShowTypes showTypes = new ShowTypes(_connString);
            List<ShowTypes> lkpShowTypes = showTypes.GetShow_Types();
            foreach (ShowTypes showType in lkpShowTypes)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Text = showType.Description;
                item.Value = showType.Show_Type_ID;

                cboShowType.Items.Add(item);
                if (showType.Show_Type_ID.ToString() == val)
                {
                    cboShowType.Text = showType.Description;
                }
            }
        }

        private void PopulateVenues(string val)
        {
            Venues venues = new Venues(_connString);
            List<Venues> lkpVenues = venues.GetVenues();
            foreach (Venues venue in lkpVenues)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Text = venue.Venue_Name;
                item.Value = venue.Venue_ID;

                cboVenue.Items.Add(item);
                if (venue.Venue_ID.ToString() == val)
                {
                    cboVenue.Text = venue.Venue_Name;
                }
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (ValidateShow())
            {
                Shows show = new Shows(_connString);
                show.Club_ID = _clubID;
                show.Show_Year_ID = Convert.ToInt32((cboShowYears.SelectedItem as ComboBoxItem).Value.ToString());
                show.Show_Type_ID = Convert.ToInt32((cboShowType.SelectedItem as ComboBoxItem).Value.ToString());
                show.Venue_ID = new Guid((cboVenue.SelectedItem as ComboBoxItem).Value.ToString());
                show.Show_Name = txtShowName.Text;
                show.Show_Opens = DateTime.Parse(string.Format("{0} {1}", dteShowDate.Value.ToString("yyyy-MM-dd"), dteShowTime.Value.ToString("hh:mm")));
                show.Judging_Commences = DateTime.Parse(string.Format("{0} {1}", dteShowDate.Value.ToString("yyyy-MM-dd"), dteJudgingCommences.Value.ToString("hh:mm")));
                show.Closing_Date = dteEntryClosingDate.Value;
                short res;
                if (short.TryParse(numClassesPerDog.Text, out res))
                    show.MaxClassesPerDog = res;

                if (_showID == new Guid())
                {
                    Guid? show_ID = show.Insert_Show(_user_ID);

                    if (show_ID != null)
                    {
                        MessageLabel.Text = "The show was added successfully";
                    }
                }
                else
                {
                    if (!show.Update_Show(_showID, _user_ID))
                    {
                        MessageLabel.Text = "The show was saved successfully";
                    }
                }
            }
        }

        private bool ValidateShow()
        {
            bool valid = true;

            if (_clubID == null)
            {
                MessageLabel.Text = "You must specify the Club.";
                valid = false;
            }
            else if (string.IsNullOrEmpty(cboVenue.Text))
            {
                MessageLabel.Text = "You must specify the Venue.";
                valid = false;
            }
            else if (string.IsNullOrEmpty(cboShowYears.Text))
            {
                MessageLabel.Text = "You must select the Show Year.";
                valid = false;
            }
            else if (string.IsNullOrEmpty(cboShowType.Text))
            {
                MessageLabel.Text = "You must select the Show Type.";
                valid = false;
            }
            else if (string.IsNullOrEmpty(txtShowName.Text))
            {
                MessageLabel.Text = "You must specify the Show Name.";
                valid = false;
            }
            else if (numClassesPerDog.Value==0)
            {
                MessageLabel.Text = "You must specify the maximum number of classes a dog can enter";
                valid = false;
            }

            return valid;
        }
    }
}
