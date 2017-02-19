
namespace Common
{
    public class AdvertizingDatum
    {
        private decimal _Id;
        private decimal _Id_Admin;
        private string _Date_Send;
        private string _Show_Page;
        private string _Text;
        private string _Title;
        private decimal _Row_View;

        public string Date_Send
        {
            get
            {
                return _Date_Send;
            }
            set
            {
                _Date_Send = value;
            }
        }

        public decimal Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
            }
        }

        public decimal Id_Admin
        {
            get
            {
                return _Id_Admin;
            }
            set
            {
                _Id_Admin = value;
            }
        }

        public decimal Row_View
        {
            get
            {
                return _Row_View;
            }
            set
            {
                _Row_View = value;
            }
        }

        public string Show_Page
        {
            get
            {
                return _Show_Page;
            }
            set
            {
                _Show_Page = value;
            }
        }

        public string Text
        {
            get
            {
                return _Text;
            }
            set
            {
                _Text = value;
            }
        }

        public string Title
        {
            get
            {
                return _Title;
            }
            set
            {
                _Title = value;
            }
        }
    }
}
