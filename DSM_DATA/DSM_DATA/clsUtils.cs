using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

/// <summary>
/// Summary description for Utils
/// </summary>
namespace DSM_DATA
{
    public class Utils
    {

        /// <summary>
        /// A function to truncate strings to a desired size
        /// </summary>
        /// <param name="S">String to be truncated</param>
        /// <param name="Size">Final size of string</param>
        /// <returns></returns>
        public static string TruncIt(string S, int Size)
        {
            if (S == null)
            {
                return "";
            }
            string str;
            int tStart = Size - 3;
            if (S.Length > Size)
            {
                S = S.Remove(tStart);
                S = S.PadRight(Size, char.Parse("."));
                str = S;
            }
            else
            {
                str = S;
            }
            return str;
        }

        /// <summary>
        /// method for determining is the user provided a valid email address
        /// We use regular expressions in this check, as it is a more thorough
        /// way of checking the address provided
        /// </summary>
        /// <param name="email">email address to validate</param>
        /// <returns>true is valid, false if not valid</returns>
        public static bool IsValidEmail(string email)
        {
            //regular expression pattern for valid email
            //addresses, allows for the following domains:
            //com,edu,info,gov,int,mil,net,org,biz,name,museum,coop,aero,pro,tv
            //string pattern = @"^[-a-zA-Z0-9][-.a-zA-Z0-9]*@[-.a-zA-Z0-9]+(\.[-.a-zA-Z0-9]+)*\.
            //        (com|co.uk|edu|info|gov|int|mil|net|org|biz|name|museum|coop|aero|pro|tv|[a-zA-Z]{2})$";
            string pattern = @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*";
            //Regular expression object
            Regex check = new Regex(pattern, RegexOptions.IgnorePatternWhitespace);
            //boolean variable to return to calling method
            bool valid = false;

            //make sure an email address was provided
            if (string.IsNullOrEmpty(email))
            {
                valid = false;
            }
            else
            {
                //use IsMatch to validate the address
                valid = check.IsMatch(email);
            }
            //return the value to the calling method
            return valid;
        }

        public static int InStrRev(string sSource, string sMatch)
        {
            int i = 0;
            i = sSource.LastIndexOf(sMatch);
            return i;
        }

        /// <summary>
        /// Takes a proper Hex color value and converts it into a VB BGR integer value.
        /// </summary>
        /// <param name="HexValue">Color to convert</param>
        /// <returns></returns>
        public static int ConvertHexColorToVB(string HexValue)
        {
            int retval = 0;
            string vbBGR = HexValue.Substring(4, 2);
            vbBGR += HexValue.Substring(2, 2);
            vbBGR += HexValue.Substring(0, 2);

            retval = Convert.ToInt32(vbBGR, 16);

            return retval;
        }

        public static string ConvertVBColorToHex(int VBIntValue)
        {
            string sTemp = VBIntValue.ToString("X");
            sTemp = sTemp.PadLeft(6, char.Parse("0"));
            string retval = sTemp.Substring(4, 2);
            retval += sTemp.Substring(2, 2);
            retval += sTemp.Substring(0, 2);
            return retval;
        }

        private static StreamWriter AppendText(string LogFile)
        {
            StreamWriter w = null;
            int tries = 3;
            while ((tries > 0) && (w == null))
            {
                try
                {
                    w = File.AppendText(LogFile);

                }
                catch (IOException)
                {
                    tries -= 1;
                    System.Threading.Thread.Sleep(1000);
                }
            }
            return w;
        }

        public Utils()
        {
        }

        public static string ToLocalDateTimeString(DateTime utc, object tzo, CultureInfo ci)
        {
            string retval = "";
            utc = utc.AddHours(double.Parse(tzo.ToString()));
            retval = utc.ToString(ci.DateTimeFormat.ShortDatePattern + " " + ci.DateTimeFormat.LongTimePattern);
            return retval;
        }

        public static string GetSQLQuotedStringFromList(ArrayList aList)
        {
            return GetSQLQuotedStringFromList((string[])aList.ToArray(typeof(string)));
        }
        public static string GetSQLQuotedStringFromList(List<string> aList)
        {
            return GetSQLQuotedStringFromList(aList.ToArray());
        }

        public static string GetSQLQuotedStringFromList(string[] aList)
        {
            StringBuilder retval = new StringBuilder();
            foreach (string s in aList)
            {
                retval.Append("'");
                retval.Append(s);
                retval.Append("'");
                retval.Append(",");
            }
            retval.Remove(retval.Length - 1, 1);
            if (retval.Length == 0)
            {
                return "''";
            }
            return retval.ToString();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="aDirectory"></param>
        /// <param name="filter">in the form of *.bak etc.</param>
        /// <returns></returns>
        public static DataTable GetFilesInDir(string aDirectory, string filter)
        {
            DataTable dtFiles = new DataTable();
            dtFiles.Columns.Add("Name");
            dtFiles.Columns.Add("Size");
            dtFiles.Columns.Add("Created");
            dtFiles.Columns.Add("LastAccessed");
            dtFiles.Columns.Add("Attribs");

            if (aDirectory != string.Empty)
            {
                DirectoryInfo dir = new DirectoryInfo(aDirectory);
                FileInfo[] flist;
                if (filter == string.Empty)
                {
                    flist = dir.GetFiles();
                }
                else
                {
                    flist = dir.GetFiles(filter);
                }

                foreach (FileInfo file in flist)
                {
                    dtFiles.Rows.Add(new string[] { file.Name,
                    string.Format("{0} MB", file.Length/1048576 ),
                    file.CreationTime.ToString(),
                    file.LastAccessTime.ToString(),
                    file.Attributes.ToString()});
                }

            }
            return dtFiles;
        }

        public static Guid DBNullToGuid(object O)
        {
            if (O == DBNull.Value || O == null)
            {
                return new Guid();
            }
            else
            {
                return new Guid(O.ToString());
            }
        }

        /// <summary>
        /// Function to convert a DBNull to string if necessary
        /// </summary>
        /// <param name="O"></param>
        /// <returns></returns>
        public static string DBNullToString(object O)
        {
            if (O == DBNull.Value || O == null)
            {
                return "";
            }
            else
            {
                return O.ToString();
            }
        }

        public static short DBNullToShort(object O)
        {
            if (O == DBNull.Value || O == null)
            {
                return 0;
            }
            else
            {
                return short.Parse(O.ToString());
            }
        }

        /// <summary>
        /// Function to convert a DBNull to int if necessary
        /// </summary>
        /// <param name="O"></param>
        /// <returns></returns>
        public static int DBNullToInt(object O)
        {
            if (O == DBNull.Value || O == null)
            {
                return 0;
            }
            else
            {
                return int.Parse(O.ToString());
            }
        }

        public static int DBNullToIntSafe(object o)
        {
            return DBNullToIntSafe(o, 0);
        }

        public static int DBNullToIntSafe(object o, int defaultValue)
        {
            int retVal = 0;

            if (o != DBNull.Value || o == null)
            {
                int.TryParse(o.ToString(), out retVal);
            }

            return retVal;
        }

        /// <summary>
        /// Function to convert a DBNull to long if necessary
        /// </summary>
        /// <param name="O"></param>
        /// <returns></returns>
        public static long DBNullToLong(object O)
        {
            if (O == DBNull.Value || O == null)
            {
                return 0;
            }
            else
            {
                return long.Parse(O.ToString());
            }
        }

        public static long DBNullToLongSafe(object o)
        {
            return DBNullToLongSafe(o, 0);
        }

        public static long DBNullToLongSafe(object o, long defaultValue)
        {
            long retVal = 0;

            if (o != DBNull.Value || o == null)
            {
                long.TryParse(o.ToString(), out retVal);
            }

            return retVal;
        }

        /// <summary>
        /// Function to convert a DBNull to decimal if necessary
        /// </summary>
        /// <param name="O"></param>
        /// <returns></returns>
        public static decimal DBNullToDec(object O)
        {
            if (O == DBNull.Value || O == null)
            {
                return 0;
            }
            else
            {
                return decimal.Parse(O.ToString());
            }
        }

        /// <summary>
        /// Function to convert a DBNull to double if necessary
        /// </summary>
        /// <param name="O"></param>
        /// <returns></returns>
        public static double DBNullToDouble(object O)
        {
            if (O == DBNull.Value || O == null)
            {
                return 0;
            }
            else
            {
                return (Double)O;
            }
        }

        public static double DBNullToDoubleSafe(object o)
        {
            double retVal = 0;

            if (o != DBNull.Value || o == null)
            {
                double.TryParse(o.ToString(), out retVal);
            }

            return retVal;
        }

        /// <summary>
        /// Function to convert a DBNull to a date if necessary
        /// </summary>
        /// <param name="O"></param>
        /// <returns></returns>
        public static DateTime DBNullToDate(object O)
        {
            if (O == DBNull.Value || O == null)
            {
                return DateTime.Parse("1/1/2000");
            }
            else
            {
                return DateTime.Parse(O.ToString());
            }
        }

        public static DateTime DBNullToDateSafe(object o)
        {
            return DBNullToDateSafe(o, new DateTime(2000, 1, 1));
        }

        public static DateTime DBNullToDateSafe(object o, DateTime defaultValue)
        {
            DateTime retVal = defaultValue;

            if (o != DBNull.Value || o == null)
            {
                DateTime.TryParse(o.ToString(), out retVal);
            }

            return retVal;
        }

        public static string SQLFormatDateTime(DateTime dt, int type)
        {
            if (dt.Year < 1900) return "NULL";

            if (type == 1)
            {
                return dt.ToString("yyyyMMdd HH:mm:ss");
            }
            else
            {
                string[] months = { "jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec" };
                return string.Format("{0} {1} {2} {3}", dt.Day, months[dt.Month - 1], dt.Year, dt.ToString("HH:mm:ss"));
            }
        }

        /// <summary>
        /// Function to convert a DBNull to a bool if necessary
        /// </summary>
        /// <param name="O"></param>
        /// <returns></returns>
        public static bool DBNullToBool(object O)
        {
            if (O == DBNull.Value || O == null)
            {
                return false;
            }
            else
            {
                return Convert.ToBoolean(O);
            }
        }

        public static byte[] DBNullToByteArray(object O)
        {
            if (O == DBNull.Value || O == null)
            {
                return new byte[] { };
            }
            else
            {
                return (byte[])O;
            }
        }

        public static string GetCurrentExecutable()
        {
            return Process.GetCurrentProcess().MainModule.FileName;
        }

        public static string GetCurrentExecutableDirectory()
        {
            string dirName = Path.GetDirectoryName(GetCurrentExecutable()).ToLower();
            dirName = dirName.Replace(@"\bin\debug", "");
            dirName = dirName.Replace(@"\bin\release", "");
            return dirName;
        }

        public static string GetASCIIComputerName()
        {
            string str = "";

            for (int i = 0; i < Environment.MachineName.Length; i++)
            {
                char c = Environment.MachineName[i];

                if (char.IsLetterOrDigit(c))
                {
                    str += c;
                }
            }

            if (str.Length == 0)
            {
                str = "DEFAULT";
            }

            return str;
        }
    }
}