using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using DSM_DATA;


namespace BLL
{
    public class Addresses
    {
        private string _connString = null;

        private DataTable tblAddresses = null;

        private Guid _address_ID;
        public Guid Address_ID
        {
            get { return _address_ID; }
            set { _address_ID = value; }
        }
        private string _address_1 = null;
        public string Address_1
        {
            get { return _address_1; }
            set { _address_1 = value; }
        }

        private string _address_2 = null;
        public string Address_2
        {
            get { return _address_2; }
            set { _address_2 = value; }
        }

        private string _address_Town = null;
        public string Address_Town
        {
            get { return _address_Town; }
            set { _address_Town = value; }
        }

        private string _address_City = null;
        public string Address_City
        {
            get { return _address_City; }
            set { _address_City = value; }
        }

        private string _address_County = null;
        public string Address_County
        {
            get { return _address_County; }
            set { _address_County = value; }
        }

        private string _address_Postcode = null;
        public string Address_Postcode
        {
            get { return _address_Postcode; }
            set { _address_Postcode = value; }
        }

        private bool _deleteAddress = false;
        public bool DeleteAddress
        {
            get { return _deleteAddress; }
            set { _deleteAddress = value; }
        }

        public Addresses(string connString)
        {
            _connString = connString;
        }

        public Addresses(string connString, Guid address_ID)
        {
            _connString = connString;

            try
            {
                AddressesBL addresses = new AddressesBL(_connString);
                tblAddresses = addresses.GetAddressByAddress_ID(address_ID);
                DataRow row = tblAddresses.Rows[0];

                _address_ID = address_ID;
                _address_1 = Utils.DBNullToString(row["Address_1"]);
                _address_2 = Utils.DBNullToString(row["Address_2"]);
                _address_Town = Utils.DBNullToString(row["Address_Town"]);
                _address_City = Utils.DBNullToString(row["Address_City"]);
                _address_County = Utils.DBNullToString(row["Address_County"]);
                _address_Postcode = Utils.DBNullToString(row["Address_Postcode"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Addresses> GetAddresses()
        {
            List<Addresses> retVal = new List<Addresses>();

            try
            {
                AddressesBL addresses = new AddressesBL(_connString);
                tblAddresses = addresses.GetAddresses();

                if (tblAddresses != null && tblAddresses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblAddresses.Rows)
                    {
                        Addresses address = new Addresses(_connString, Utils.DBNullToGuid(row["Address_ID"]));
                        retVal.Add(address);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Addresses> GetAddressesLikeAddress_1(string address_1)
        {
            List<Addresses> retVal = new List<Addresses>();

            try
            {
                AddressesBL addresses = new AddressesBL(_connString);
                tblAddresses = addresses.GetAddressesLikeAddress_1(address_1);

                if (tblAddresses != null && tblAddresses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblAddresses.Rows)
                    {
                        Addresses address = new Addresses(_connString, Utils.DBNullToGuid(row["Address_ID"]));
                        retVal.Add(address);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Addresses> GetAddressesLikeAddress_2(string address_2)
        {
            List<Addresses> retVal = new List<Addresses>();

            try
            {
                AddressesBL addresses = new AddressesBL(_connString);
                tblAddresses = addresses.GetAddressesLikeAddress_1(address_2);

                if (tblAddresses != null && tblAddresses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblAddresses.Rows)
                    {
                        Addresses address = new Addresses(_connString, Utils.DBNullToGuid(row["Address_ID"]));
                        retVal.Add(address);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Addresses> GetAddressesLikeAddress_Town(string address_Town)
        {
            List<Addresses> retVal = new List<Addresses>();

            try
            {
                AddressesBL addresses = new AddressesBL(_connString);
                tblAddresses = addresses.GetAddressesLikeAddress_1(address_Town);

                if (tblAddresses != null && tblAddresses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblAddresses.Rows)
                    {
                        Addresses address = new Addresses(_connString, Utils.DBNullToGuid(row["Address_ID"]));
                        retVal.Add(address);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Addresses> GetAddressesLikeAddress_City(string address_City)
        {
            List<Addresses> retVal = new List<Addresses>();

            try
            {
                AddressesBL addresses = new AddressesBL(_connString);
                tblAddresses = addresses.GetAddressesLikeAddress_1(address_City);

                if (tblAddresses != null && tblAddresses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblAddresses.Rows)
                    {
                        Addresses address = new Addresses(_connString, Utils.DBNullToGuid(row["Address_ID"]));
                        retVal.Add(address);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Addresses> GetAddressesLikeAddress_County(string address_County)
        {
            List<Addresses> retVal = new List<Addresses>();

            try
            {
                AddressesBL addresses = new AddressesBL(_connString);
                tblAddresses = addresses.GetAddressesLikeAddress_1(address_County);

                if (tblAddresses != null && tblAddresses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblAddresses.Rows)
                    {
                        Addresses address = new Addresses(_connString, Utils.DBNullToGuid(row["Address_ID"]));
                        retVal.Add(address);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Addresses> GetAddressesByAddress_Postcode(string address_Postcode)
        {
            List<Addresses> retVal = new List<Addresses>();

            try
            {
                AddressesBL addresses = new AddressesBL(_connString);
                tblAddresses = addresses.GetAddressesLikeAddress_Postcode(address_Postcode);

                if (tblAddresses != null && tblAddresses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblAddresses.Rows)
                    {
                        Addresses address = new Addresses(_connString, Utils.DBNullToGuid(row["Address_ID"]));
                        retVal.Add(address);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Address(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                AddressesBL addresses = new AddressesBL(_connString);
                retVal = addresses.Insert_Address(_address_1, _address_2, _address_Town, _address_City, _address_County, _address_Postcode, user_ID);
            }
            catch (Exception ex)
            {                
                throw ex;
            }

            return retVal;
        }

        public bool Update_Address(Guid address_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                AddressesBL addresses = new AddressesBL(_connString);
                retVal = addresses.Update_Address(address_ID, _address_1, _address_2, _address_Town, _address_City, _address_County, _address_Postcode, _deleteAddress, user_ID);
            }
            catch (Exception ex)
            {                
                throw ex;
            }

            return retVal;
        }

    }
}