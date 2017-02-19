
namespace Common
{
    public class Product_CommentDatum
    {
        private decimal _Id;
        private string _Text;
        private decimal _Id_Product;
        private string _Show_Comment;
        private string _Date_Send;
        private string _Title;
        private string _Email;
        private string _NameUser;

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
        public string Email
        {
            get
            {
                return _Email;
            }
            set
            {
                _Email = value;
            }
        }
        public string NameUser
        {
            get
            {
                return _NameUser;
            }
            set
            {
                _NameUser = value;
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





        public decimal Id_Product
        {
            get
            {
                return _Id_Product;
            }
            set
            {
                _Id_Product = value;
            }
        }

        public string Show_Comment
        {
            get
            {
                return _Show_Comment;
            }
            set
            {
                _Show_Comment = value;
            }
        }
    }
}
