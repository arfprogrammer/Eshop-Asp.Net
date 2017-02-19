
namespace Common
{
    public class AdminDatum
    {
        private decimal _Id_admin;
        private string _Name;
        private string _Username;
        private string _Password;
        private string _Security;

        public decimal Id_admin
        {
            get
            {
                return _Id_admin;
            }
            set
            {
                _Id_admin = value;
            }
        }

        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
            }
        }

        public string UserName
        {
            get
            {
                return _Username;
            }
            set
            {
                _Username = value;
            }
        }

        public string Password
        {
            get
            {
                return _Password;
            }
            set
            {
                _Password = value;
            }
        }

        public string Security
        {
            get
            {
                return _Security;
            }
            set
            {
                _Security = value;
            }
        }
    }
}
