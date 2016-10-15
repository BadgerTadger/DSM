using System;
using System.Diagnostics;
using System.IO;

namespace BLL
{
    internal class ErrorLog
    {
        private const int LOG_WRITE_RETRIES = 3;

        public ErrorLog()
        {
        }

        public static void LogToFile(string Message, string LogFile)
        {
            if (Message == null)
            {
                if (File.Exists(LogFile))
                {
                    File.Delete(LogFile);
                    return;
                }
            }

            DateTime n = DateTime.Now;

            string timeStamp = string.Format("{0}-{1}-{2}.{3}:{4}:{5}.{6} [{7}:{8}]",
                                 n.Year, n.Month.ToString("00"), n.Day.ToString("00"),
                                 n.Hour.ToString("00"), n.Minute.ToString("00"), n.Second.ToString("00"),
                                 n.Millisecond.ToString("0000"), "SPSSync", System.Threading.Thread.CurrentThread.ManagedThreadId);
            string writeMessage = string.Format("{0} {1}", timeStamp, Message);
            Debug.WriteLine(writeMessage);

            int retries = LOG_WRITE_RETRIES;
            bool ok = false;
            while (retries > 0 && !ok)
            {
                ok = true;
                try
                {
                    // Create a file to write to.
                    using (StreamWriter sw = new StreamWriter(LogFile, true))// File.CreateText(LogFile))
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

        public static void LogToTempFile(string Message, string Filename)
        {
            string LogFile = Filename;
            if (Message == null)
            {
                if (File.Exists(LogFile))
                {
                    File.Delete(LogFile);
                }
            }
            else
            {
                LogToFile(Message, LogFile);
            }
        }

        public static string ErrorLogPathname()
        {
            return Environment.CurrentDirectory;
        }

        public static void LogMessage(string Message)
        {
            LogToFile(Message, ErrorLogPathname());
        }
    }
}
