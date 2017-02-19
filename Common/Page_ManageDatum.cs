
namespace Common
{
    public class Page_ManageDatum
    {
        private decimal _Id;
        private string _Title;
        private string _Text;
        private string _Date_Send;
        private decimal _Id_Admin;
        private string _Show_Page;
        private decimal _Page_View;
        private decimal _Row_View;
        private string _MetaKeyword;
        private string _MetaDescription;
        private string _Place;
        public string Place
        {
            get
            {
                return _Place;
            }
            set
            {
                _Place = value;
            }
        }
        public string MetaKeyword
        {
            get
            {
                return _MetaKeyword;
            }
            set
            {
                _MetaKeyword = value;
            }
        }
        public string MetaDescription
        {
            get
            {
                return _MetaDescription;
            }
            set
            {
                _MetaDescription = value;
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

        public decimal Page_View
        {
            get
            {
                return _Page_View;
            }
            set
            {
                _Page_View = value;

            }
        }
    }
}
