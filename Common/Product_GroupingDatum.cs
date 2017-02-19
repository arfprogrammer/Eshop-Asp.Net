
namespace Common
{
    public class Product_GroupingDatum
    {
        private decimal _Id;
        private string _Title;
        private decimal _Rowview;
        private decimal _Id_root;
        private string _Path;
        private string _MetaKeyword;
        private string _MetaDescription;
        public string Path
        {
            get
            {
                return _Path;
            }
            set
            {
                _Path = value;
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

        public decimal Id_root
        {
            get
            {
                return _Id_root;
            }
            set
            {
                _Id_root = value;
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

        public decimal Rowview
        {
            get
            {
                return _Rowview;
            }
            set
            {
                _Rowview = value;
            }
        }      
    }
}
