using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HotelDAL
{
    public class Auth
    {
        private string UserType;
        private string Id;
        private string Password;

        public string UserType1
        {
            get
            {
                return UserType;
            }

            set
            {
                UserType = value;
            }
        }

        public string Id1
        {
            get
            {
                return Id;
            }

            set
            {
                Id = value;
            }
        }

        public string Password1
        {
            get
            {
                return Password;
            }

            set
            {
                Password = value;
            }
        }
    }
}
