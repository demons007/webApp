using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HotelDAL
{
    public class Assume
    {
        private string name;
        private string rate;
        private string quantity;

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

        public string Rate
        {
            get
            {
                return rate;
            }

            set
            {
                rate = value;
            }
        }

        public string Quantity
        {
            get
            {
                return quantity;
            }

            set
            {
                quantity = value;
            }
        }
    }
}
