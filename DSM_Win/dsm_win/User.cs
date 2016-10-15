using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dsm_win
{
    class User
    {
        private Guid _userID;  
        public Guid UserID
        {
            get { return _userID; }
            set { _userID = value; }
        }

        private string _userName;
        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        
        public User()
        {

        }

        public User(Guid userID)
        {
            _userID = userID;
        }

        public User(string userName)
        {
            _userName = userName;
        }
    }
}
