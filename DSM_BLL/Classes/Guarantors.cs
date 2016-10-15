using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;

namespace BLL
{
    public class Guarantors
    {
        private string _connString = "";

        private DataTable tblGuarantors = null;

        private Guid _guarantor_ID;
        public Guid Guarantor_ID
        {
            get { return _guarantor_ID; }
            set { _guarantor_ID = value; }
        }
        private bool _isShow_IDNull;
        public bool IsShow_IDNull
        {
            get { return _isShow_IDNull; }
            set { _isShow_IDNull = value; }
        }
        private Guid? _show_ID = null;
        public Guid? Show_ID
        {
            get { return _show_ID; }
            set { _show_ID = value; }
        }
        private bool _isChairman_Person_IDNull;
        public bool IsChairman_Person_IDNull
        {
            get { return _isChairman_Person_IDNull; }
            set { _isChairman_Person_IDNull = value; }
        }
        private Guid? _chairman_Person_ID = null;
        public Guid? Chairman_Person_ID
        {
            get { return _chairman_Person_ID; }
            set { _chairman_Person_ID = value; }
        }
        private bool _isSecretary_Person_IDNull;
        public bool IsSecretary_Person_IDNull
        {
            get { return _isSecretary_Person_IDNull; }
            set { _isSecretary_Person_IDNull = value; }
        }
        private Guid? _secretary_Person_ID = null;
        public Guid? Secretary_Person_ID
        {
            get { return _secretary_Person_ID; }
            set { _secretary_Person_ID = value; }
        }
        private bool _isTreasurer_Person_IDNull;
        public bool IsTreasurer_Person_IDNull
        {
            get { return _isTreasurer_Person_IDNull; }
            set { _isTreasurer_Person_IDNull = value; }
        }
        private Guid? _treasurer_Person_ID = null;
        public Guid? Treasurer_Person_ID
        {
            get { return _treasurer_Person_ID; }
            set { _treasurer_Person_ID = value; }
        }
        private bool _isCommittee1_Person_IDNull;
        public bool IsCommittee1_Person_IDNull
        {
            get { return _isCommittee1_Person_IDNull; }
            set { _isCommittee1_Person_IDNull = value; }
        }
        private Guid? _committee1_Person_ID = null;
        public Guid? Committee1_Person_ID
        {
            get { return _committee1_Person_ID; }
            set { _committee1_Person_ID = value; }
        }
        private bool _isCommittee2_Person_IDNull;
        public bool IsCommittee2_Person_IDNull
        {
            get { return _isCommittee2_Person_IDNull; }
            set { _isCommittee2_Person_IDNull = value; }
        }
        private Guid? _committee2_Person_ID = null;
        public Guid? Committee2_Person_ID
        {
            get { return _committee2_Person_ID; }
            set { _committee2_Person_ID = value; }
        }
        private bool _isCommittee3_Person_IDNull;
        public bool IsCommittee3_Person_IDNull
        {
            get { return _isCommittee3_Person_IDNull; }
            set { _isCommittee3_Person_IDNull = value; }
        }
        private Guid? _committee3_Person_ID = null;
        public Guid? Committee3_Person_ID
        {
            get { return _committee3_Person_ID; }
            set { _committee3_Person_ID = value; }
        }

        private bool? _deleteGuarantor = null;
        public bool? DeleteGuarantor
        {
            get { return _deleteGuarantor; }
            set { _deleteGuarantor = value; }
        }

        public Guarantors(string connString)
        {
            _connString = connString;
        }

        public Guarantors(string connString, Guid guarantor_ID)
        {
            _connString = connString;

            try
            {
                GuarantorsBL guarantors = new GuarantorsBL(_connString);
                tblGuarantors = guarantors.GetGuarantorByGuarantor_ID(guarantor_ID);
                DataRow row = tblGuarantors.Rows[0];

                _guarantor_ID = guarantor_ID;
                _show_ID = Utils.DBNullToGuid(row["Show_ID"]);
                _chairman_Person_ID = Utils.DBNullToGuid(row["Chairman_Person_ID"]);
                _secretary_Person_ID = Utils.DBNullToGuid(row["Secretary_Person_ID"]);
                _treasurer_Person_ID = Utils.DBNullToGuid(row["Treasurer_Person_ID"]);
                _committee1_Person_ID = Utils.DBNullToGuid(row["Committee1_Person_ID"]);
                _committee2_Person_ID = Utils.DBNullToGuid(row["Committee2_Person_ID"]);
                _committee3_Person_ID = Utils.DBNullToGuid(row["Committee3_Person_ID"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Guarantors> GetGuarantorsByGuarantor_ID(Guid guarantor_ID)
        {
            List<Guarantors> guarantorList = new List<Guarantors>();

            try
            {
                GuarantorsBL guarantors = new GuarantorsBL(_connString);
                tblGuarantors = guarantors.GetGuarantorByGuarantor_ID(guarantor_ID);

                if (tblGuarantors != null && tblGuarantors.Rows.Count > 0)
                {
                    foreach (DataRow row in tblGuarantors.Rows)
                    {
                        Guarantors guarantor = new Guarantors(_connString, Utils.DBNullToGuid(row["Guarantor_ID"]));
                        guarantorList.Add(guarantor);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return guarantorList;
        }

        public List<Guarantors> GetGuarantorsByShow_ID(Guid show_ID)
        {
            List<Guarantors> guarantorList = new List<Guarantors>();

            try
            {
                GuarantorsBL guarantors = new GuarantorsBL(_connString);
                tblGuarantors = guarantors.GetGuarantorsByShow_ID(show_ID);

                if (tblGuarantors != null && tblGuarantors.Rows.Count > 0)
                {
                    foreach (DataRow row in tblGuarantors.Rows)
                    {
                        Guarantors guarantor = new Guarantors(_connString, Utils.DBNullToGuid(row["Guarantor_ID"]));
                        guarantorList.Add(guarantor);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return guarantorList;
        }

        public Guid? Insert_Guarantor(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                GuarantorsBL guarantors = new GuarantorsBL(_connString);
                retVal = (Guid?)guarantors.Insert_Guarantors(_show_ID, _chairman_Person_ID, _secretary_Person_ID, _treasurer_Person_ID,
                    _committee1_Person_ID, _committee2_Person_ID, _committee3_Person_ID, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Guarantor(Guid guarantor_ID, Guid user_ID)
        {
            bool success = false;

            try
            {
                GuarantorsBL guarantors = new GuarantorsBL(_connString);
                success = guarantors.Update_Guarantors(guarantor_ID, _show_ID, _chairman_Person_ID, _secretary_Person_ID, _treasurer_Person_ID,
                    _committee1_Person_ID, _committee2_Person_ID, _committee3_Person_ID, _deleteGuarantor, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return success;
        }
    }
}