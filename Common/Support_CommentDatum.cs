

namespace Common
{
    public class Support_CommentDatum
    {

        private decimal _Id;

        private string _Title;

        private string _Text;

        private decimal _ID_User;

        private string _Date_send;


        private string _SendType;


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

        public decimal ID_User
        {
            get
            {
                return _ID_User;
            }
            set
            {
                _ID_User = value;
            }
        }

        public string Date_send
        {
            get
            {
                return _Date_send;
            }
            set
            {
                _Date_send = value;
            }
        }



        public string SendType
        {
            get
            {
                return _SendType;
            }
            set
            {
                _SendType = value;
            }
        }

    }
}
