namespace dsm_win
{
    partial class frmShowSetup
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.cboShows = new System.Windows.Forms.ComboBox();
            this.btnExit = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.cboShowType = new System.Windows.Forms.ComboBox();
            this.txtShowName = new System.Windows.Forms.TextBox();
            this.dteShowDate = new System.Windows.Forms.DateTimePicker();
            this.dteShowTime = new System.Windows.Forms.DateTimePicker();
            this.dteJudgingCommences = new System.Windows.Forms.DateTimePicker();
            this.dteEntryClosingDate = new System.Windows.Forms.DateTimePicker();
            this.numClassesPerDog = new System.Windows.Forms.NumericUpDown();
            this.btnSave = new System.Windows.Forms.Button();
            this.cboShowYears = new System.Windows.Forms.ComboBox();
            this.MessageLabel = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.cboVenue = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.numClassesPerDog)).BeginInit();
            this.SuspendLayout();
            // 
            // cboShows
            // 
            this.cboShows.FormattingEnabled = true;
            this.cboShows.Location = new System.Drawing.Point(86, 12);
            this.cboShows.Name = "cboShows";
            this.cboShows.Size = new System.Drawing.Size(330, 21);
            this.cboShows.TabIndex = 0;
            this.cboShows.SelectedIndexChanged += new System.EventHandler(this.cboShows_SelectedIndexChanged);
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(503, 280);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 6;
            this.btnExit.Text = "Exit";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(67, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "Select Show";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 50);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "Show Year";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 76);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "Show Type";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 102);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 13);
            this.label4.TabIndex = 10;
            this.label4.Text = "Show Name";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 157);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(150, 13);
            this.label5.TabIndex = 11;
            this.label5.Text = "Show Date and Opening Time";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 183);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(105, 13);
            this.label6.TabIndex = 12;
            this.label6.Text = "Judging Commences";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(12, 209);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(94, 13);
            this.label7.TabIndex = 13;
            this.label7.Text = "Entry Closing Date";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 235);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(184, 13);
            this.label8.TabIndex = 14;
            this.label8.Text = "Maximum Number of Classes Per Dog";
            // 
            // cboShowType
            // 
            this.cboShowType.FormattingEnabled = true;
            this.cboShowType.Location = new System.Drawing.Point(202, 72);
            this.cboShowType.Name = "cboShowType";
            this.cboShowType.Size = new System.Drawing.Size(146, 21);
            this.cboShowType.TabIndex = 16;
            // 
            // txtShowName
            // 
            this.txtShowName.Location = new System.Drawing.Point(202, 98);
            this.txtShowName.Name = "txtShowName";
            this.txtShowName.Size = new System.Drawing.Size(376, 20);
            this.txtShowName.TabIndex = 17;
            // 
            // dteShowDate
            // 
            this.dteShowDate.Location = new System.Drawing.Point(202, 152);
            this.dteShowDate.Name = "dteShowDate";
            this.dteShowDate.Size = new System.Drawing.Size(146, 20);
            this.dteShowDate.TabIndex = 18;
            // 
            // dteShowTime
            // 
            this.dteShowTime.Location = new System.Drawing.Point(354, 151);
            this.dteShowTime.Name = "dteShowTime";
            this.dteShowTime.Size = new System.Drawing.Size(66, 20);
            this.dteShowTime.TabIndex = 19;
            // 
            // dteJudgingCommences
            // 
            this.dteJudgingCommences.Location = new System.Drawing.Point(202, 177);
            this.dteJudgingCommences.Name = "dteJudgingCommences";
            this.dteJudgingCommences.Size = new System.Drawing.Size(65, 20);
            this.dteJudgingCommences.TabIndex = 20;
            // 
            // dteEntryClosingDate
            // 
            this.dteEntryClosingDate.Location = new System.Drawing.Point(202, 203);
            this.dteEntryClosingDate.Name = "dteEntryClosingDate";
            this.dteEntryClosingDate.Size = new System.Drawing.Size(146, 20);
            this.dteEntryClosingDate.TabIndex = 21;
            // 
            // numClassesPerDog
            // 
            this.numClassesPerDog.Location = new System.Drawing.Point(202, 233);
            this.numClassesPerDog.Name = "numClassesPerDog";
            this.numClassesPerDog.Size = new System.Drawing.Size(65, 20);
            this.numClassesPerDog.TabIndex = 22;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(422, 280);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 23);
            this.btnSave.TabIndex = 23;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // cboShowYears
            // 
            this.cboShowYears.FormattingEnabled = true;
            this.cboShowYears.Location = new System.Drawing.Point(202, 47);
            this.cboShowYears.Name = "cboShowYears";
            this.cboShowYears.Size = new System.Drawing.Size(121, 21);
            this.cboShowYears.TabIndex = 24;
            // 
            // MessageLabel
            // 
            this.MessageLabel.AutoSize = true;
            this.MessageLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MessageLabel.ForeColor = System.Drawing.Color.Red;
            this.MessageLabel.Location = new System.Drawing.Point(12, 256);
            this.MessageLabel.Name = "MessageLabel";
            this.MessageLabel.Size = new System.Drawing.Size(54, 17);
            this.MessageLabel.TabIndex = 25;
            this.MessageLabel.Text = "Status";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(12, 129);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(38, 13);
            this.label9.TabIndex = 26;
            this.label9.Text = "Venue";
            // 
            // cboVenue
            // 
            this.cboVenue.FormattingEnabled = true;
            this.cboVenue.Location = new System.Drawing.Point(202, 124);
            this.cboVenue.Name = "cboVenue";
            this.cboVenue.Size = new System.Drawing.Size(376, 21);
            this.cboVenue.TabIndex = 27;
            // 
            // frmShowSetup
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(583, 304);
            this.Controls.Add(this.cboVenue);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.MessageLabel);
            this.Controls.Add(this.cboShowYears);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.numClassesPerDog);
            this.Controls.Add(this.dteEntryClosingDate);
            this.Controls.Add(this.dteJudgingCommences);
            this.Controls.Add(this.dteShowTime);
            this.Controls.Add(this.dteShowDate);
            this.Controls.Add(this.txtShowName);
            this.Controls.Add(this.cboShowType);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.cboShows);
            this.Name = "frmShowSetup";
            this.Text = "Manage Shows";
            this.Load += new System.EventHandler(this.frmShowSetup_Load);
            ((System.ComponentModel.ISupportInitialize)(this.numClassesPerDog)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cboShows;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox cboShowType;
        private System.Windows.Forms.TextBox txtShowName;
        private System.Windows.Forms.DateTimePicker dteShowDate;
        private System.Windows.Forms.DateTimePicker dteShowTime;
        private System.Windows.Forms.DateTimePicker dteJudgingCommences;
        private System.Windows.Forms.DateTimePicker dteEntryClosingDate;
        private System.Windows.Forms.NumericUpDown numClassesPerDog;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.ComboBox cboShowYears;
        private System.Windows.Forms.Label MessageLabel;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cboVenue;
    }
}