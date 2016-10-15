using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using BLL;

namespace DSM_Import
{
    static class Utils
    {
        private const int LOG_WRITE_RETRIES = 3;
        private static string logFile = "DSM_Import.LOG";

        public static void LogToFile(string Message)
        {
            if (Message == null)
            {
                if (File.Exists(logFile))
                {
                    File.Delete(logFile);
                    return;
                }
            }

            DateTime n = DateTime.Now;

            string timeStamp = string.Format("{0}-{1}-{2}.{3}:{4}:{5}.{6} [{7}:{8}]",
                                 n.Year, n.Month.ToString("00"), n.Day.ToString("00"),
                                 n.Hour.ToString("00"), n.Minute.ToString("00"), n.Second.ToString("00"),
                                 n.Millisecond.ToString("0000"), "DSM", System.Threading.Thread.CurrentThread.ManagedThreadId);
            string writeMessage = string.Format("{0} {1}", timeStamp, Message);

            int retries = LOG_WRITE_RETRIES;
            bool ok = false;
            while (retries > 0 && !ok)
            {
                ok = true;
                try
                {
                    // Create a file to write to.
                    using (StreamWriter sw = new StreamWriter(logFile, true))// File.CreateText(LogFile))
                    {
                        sw.WriteLine(writeMessage);
                    }
                }
                catch
                {
                    ok = false;
                    //System.Threading.Thread.Sleep(500);
                }
                retries -= 1;
            }
        }

        public static DateTime FromExcelSerialDate(int SerialDate)
        {
            if (SerialDate > 59) SerialDate -= 1; //Excel/Lotus 2/29/1900 bug   
            return new DateTime(1899, 12, 31).AddDays(SerialDate);
        }

        public static string ConnectionString()
        {
            string retVal = "";

            SqlConnectionStringBuilder csb = new SqlConnectionStringBuilder(ConfigurationManager.ConnectionStrings["SSSDBConnDev"].ConnectionString);

            retVal = csb.ConnectionString;

            return retVal;
        }

        public static Guid? SetUserID()
        {
            Guid? retVal = null;

            People person = new People(Utils.ConnectionString());
            List<People> personList = person.GetPeopleBySurnameForenameEmail("Cantrell", "Daren", "darencantrell@gmail.com");
            if (personList.Count == 1)
            {
                UserPerson userPerson = new UserPerson(Utils.ConnectionString());
                List<UserPerson> userPeople = userPerson.GetUser_PersonByPerson_ID(personList[0].Person_ID);
                if (userPeople.Count == 1)
                {
                    retVal = userPeople[0].User_ID;
                }
                else
                {
                    LogToFile("Multiple users exist with the same Person ID");
                }
            }
            else
            {
                LogToFile("Multiple people exist with the same forename, surname and email address");
            }

            return retVal;
        }
    }

    public class ComboBoxItem
    {
        public string Text { get; set; }
        public object Value { get; set; }

        public override string ToString()
        {
            return Text;
        }      
    }
}
