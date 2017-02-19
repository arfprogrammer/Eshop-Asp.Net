
namespace Common
{
    public class Product_PictureDatum
    {
        private decimal _Id;
        private decimal _Id_Amin;
        private decimal _Id_Product;
        private string _Pic;

        public decimal Id_Admin
        {
            get
            {
                return _Id_Amin;
            }
            set
            {
                _Id_Amin = value;
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

        public string Pic
        {
            get
            {
                return _Pic;
            }
            set
            {
                _Pic = value;
            }
        }

    }
}
