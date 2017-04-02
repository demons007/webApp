using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HotelDAL
{
    public class AdUser
    {
        private string email;
        private string name;
        private string phone;
        private string gender;
        private string filePath;
        private string roomNo;

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Phone
        {
            get
            {
                return phone;
            }

            set
            {
                phone = value;
            }
        }

        public string Gender
        {
            get
            {
                return gender;
            }

            set
            {
                gender = value;
            }
        }

        public string FilePath
        {
            get
            {
                return filePath;
            }

            set
            {
                filePath = value;
            }
        }

        public string RoomNo
        {
            get
            {
                return roomNo;
            }

            set
            {
                roomNo = value;
            }
        }
    }
}
