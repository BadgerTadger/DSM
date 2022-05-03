using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;
using System.Data.SqlClient;
using System.Configuration;

namespace dsm_win
{ 
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new frmMain());
        }

        public static Guid UserID()
        {
            //Guid retVal = new Guid("A4CAA54C-47B0-4D4D-9AE4-E44684A32AB2");
            //Guid retVal = new Guid("B62E5FED-8459-4540-B0A9-CC50AAB7ADC2");
            Guid? temp = Utils.SetUserID();
            Guid retVal = temp ?? new Guid();

            return retVal;
        }

        private static Guid? _personID;
        public static Guid? PersonID
        {
            get
            {
                return _personID;
            }
            set
            {
                _personID = value;
            }
        }

        public static string ConnectionString()
        {
            string retVal ="";

            SqlConnectionStringBuilder csb = new SqlConnectionStringBuilder(ConfigurationManager.ConnectionStrings["SSSDBConnDev"].ConnectionString);

            retVal = csb.ConnectionString;

            return retVal;
        }
    }
}
