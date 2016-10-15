using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace DSM_DATA
{
    public class SSSDatabaseInfo
    {
        public delegate void ErrorLogDelegate(string ErrorToReport);

        public enum ParameterType
        {
            Guid,
            String,
            Int,
            Decimal,
            Double,
            Long,
            Bool,
            DateTime,
            Binary,
            Short
        }

        public enum ParameterDirection
        {
            Input = 1,
            Output = 2,
            InputOutput = 3,
            ReturnValue = 6,
        }

        public class DatabaseParameter
        {
            string _Name = "";
            public string Name
            {
                get { return _Name; }
                set { _Name = value; }
            }

            ParameterType _ParamType = ParameterType.String;
            public ParameterType ParamType
            {
                get { return _ParamType; }
                set { _ParamType = value; }
            }

            ParameterDirection _ParamDirection = ParameterDirection.InputOutput;
            public ParameterDirection ParamDirection
            {
                get { return _ParamDirection; }
                set { _ParamDirection = value; }
            }

            object _Value = null;
            public object Value
            {
                get { return _Value; }
                set { _Value = value; }
            }

            public DatabaseParameter(string name, ParameterType paramType, object value, ParameterDirection paramDirection = ParameterDirection.InputOutput)
            {
                _Name = name;
                _ParamType = paramType;
                _Value = value;
                _ParamDirection = paramDirection;
            }
        }

        public static DataSet ExecuteDataSet(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            return SqlHelper.ExecuteDataset(connString, spName, GetMSSQLParameters(dbParameters));
        }

        public static DataSet ExecuteDataSet(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            return SqlHelper.ExecuteDataset(trans, spName, GetMSSQLParameters(dbParameters));
        }

        public static SqlDataReader ExecuteReader(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            return SqlHelper.ExecuteReader(connString, spName, GetMSSQLParameters(dbParameters));
        }

        public static SqlDataReader ExecuteReader(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            return SqlHelper.ExecuteReader(trans, spName, GetMSSQLParameters(dbParameters));
        }

        public static void ExecuteNonQuery(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            SqlHelper.ExecuteNonQuery(connString, spName, GetMSSQLParameters(dbParameters));
        }

        public static void ExecuteNonQuery(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            SqlHelper.ExecuteNonQuery(trans, spName, GetMSSQLParameters(dbParameters));
        }

        #region ExecuteScalarReturnGuid

        public static Guid ExecuteScalarReturnGuid(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(connString, spName, dbParameters);

            return Utils.DBNullToGuid(result);
        }

        public static Guid ExecuteScalarReturnGuid(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(trans, spName, dbParameters);

            return Utils.DBNullToGuid(result);
        }

        #endregion

        #region ExecuteScalarReturnBool

        public static bool ExecuteScalarReturnBool(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(connString, spName, dbParameters);

            return Utils.DBNullToBool(result);
        }

        public static bool ExecuteScalarReturnBool(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(trans, spName, dbParameters);

            return Utils.DBNullToBool(result);
        }

        #endregion

        #region ExecuteScalarReturnShort

        public static short ExecuteScalarReturnShort(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(connString, spName, dbParameters);

            return Utils.DBNullToShort(result);
        }

        public static short ExecuteScalarReturnShort(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(trans, spName, dbParameters);

            return Utils.DBNullToShort(result);
        }

        #endregion

        #region ExecuteScalarReturnInt

        public static int ExecuteScalarReturnInt(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(connString, spName, dbParameters);

            return Utils.DBNullToInt(result);
        }

        public static int ExecuteScalarReturnInt(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(trans, spName, dbParameters);

            return Utils.DBNullToInt(result);
        }

        #endregion

        #region ExecuteScalarReturnString

        public static string ExecuteScalarReturnString(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(connString, spName, dbParameters);

            return Utils.DBNullToString(result);
        }

        public static string ExecuteScalarReturnString(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(trans, spName, dbParameters);

            return Utils.DBNullToString(result);
        }

        #endregion

        #region ExecuteScalarReturnDateTime

        public static DateTime ExecuteScalarReturnDateTime(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(connString, spName, dbParameters);

            return Utils.DBNullToDate(result);
        }

        public static DateTime ExecuteScalarReturnDateTime(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(trans, spName, dbParameters);

            return Utils.DBNullToDate(result);
        }

        #endregion

        #region ExecuteScalarReturnDecimal

        public static decimal ExecuteScalarReturnDecimal(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(connString, spName, dbParameters);

            return Utils.DBNullToDec(result);
        }

        public static decimal ExecuteScalarReturnDecimal(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            object result = ExecuteScalar(trans, spName, dbParameters);

            return Utils.DBNullToDec(result);
        }

        #endregion

        public static object ExecuteScalar(string connString, string spName, DatabaseParameter[] dbParameters)
        {
            object retVal = new object();

            retVal = SqlHelper.ExecuteScalar(connString, spName, GetMSSQLParameters(dbParameters));

            return retVal;
        }

        public static object ExecuteScalar(SqlTransaction trans, string spName, DatabaseParameter[] dbParameters)
        {
            object retVal = new object();

            retVal = SqlHelper.ExecuteScalar(trans, spName, GetMSSQLParameters(dbParameters));

            return retVal;
        }

        public static string SQLDateQuote(string s, int type)
        {
            if (s == "NULL") return s;

            if (type == 1)
            {
                return "'" + s.Replace("'", "''") + "'";
            }
            else
            {
                return '#' + s + '#';
            }
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

        public static string GetSqlDatabaseName(string connString)
        {
            string dbName = "";

            string regPattern = @"initial[ ]*catalog[ ]*\\=[ ]*(\\w*)";
            Regex regEx = new Regex(regPattern);
            Match match = regEx.Match(connString);

            if (match.Success)
            {
                dbName = match.Groups[1].Value;
            }

            return dbName;
        }

        public static SqlParameter[] GetMSSQLParameters(DatabaseParameter[] dbParameters)
        {
            List<SqlParameter> retval = new List<SqlParameter>();

            if (dbParameters != null)
            {
                foreach (DatabaseParameter p in dbParameters)
                {
                    SqlParameter tmp = new SqlParameter();
                    tmp.ParameterName = "@" + p.Name;
                    tmp.Value = p.Value;
                    switch (p.ParamType)
                    {
                        case ParameterType.String:
                            tmp.SqlDbType = SqlDbType.NVarChar;
                            break;
                        case ParameterType.Int:
                            tmp.SqlDbType = SqlDbType.Int;
                            break;
                        case ParameterType.Decimal:
                            tmp.SqlDbType = SqlDbType.Decimal;
                            break;
                        case ParameterType.Double:
                            tmp.SqlDbType = SqlDbType.Float;
                            break;
                        case ParameterType.Long:
                            tmp.SqlDbType = SqlDbType.BigInt;
                            break;
                        case ParameterType.Bool:
                            tmp.SqlDbType = SqlDbType.Bit;
                            break;
                        case ParameterType.DateTime:
                            tmp.SqlDbType = SqlDbType.DateTime;
                            break;
                        case ParameterType.Binary:
                            tmp.SqlDbType = SqlDbType.Binary;
                            break;
                        case ParameterType.Short:
                            tmp.SqlDbType = SqlDbType.SmallInt;
                            break;
                        case ParameterType.Guid:
                            tmp.SqlDbType = SqlDbType.UniqueIdentifier;
                            break;
                        default:
                            break;
                    }
                    switch (p.ParamDirection)
                    {
                        case ParameterDirection.Input:
                            tmp.Direction = System.Data.ParameterDirection.Input;
                            break;
                        case ParameterDirection.Output:
                            tmp.Direction = System.Data.ParameterDirection.Output;
                            break;
                        case ParameterDirection.InputOutput:
                            tmp.Direction = System.Data.ParameterDirection.InputOutput;
                            break;
                        case ParameterDirection.ReturnValue:
                            tmp.Direction = System.Data.ParameterDirection.ReturnValue;
                            break;
                        default:
                            break;
                    }
                    retval.Add(tmp);
                }
            }

            return retval.ToArray();
        }
    }
}
