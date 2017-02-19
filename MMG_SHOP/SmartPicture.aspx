<%@ Page Language="C#" %>

<%@ Import Namespace="System.Drawing" %>
<%@ Import Namespace="System.Drawing.Imaging" %>

<script runat="server"> 

    void Page_Load(Object s, EventArgs e)
    {
        
        double photoWidth, photoHeight;
        double percentageDifference = 0;
        bool heHasAccess = false;
   
        System.Drawing.Image inputImage;

        //get information being sent 
        heHasAccess = true;

        //get file name 
        string pictureFileName = Request.QueryString["f"];
        if (pictureFileName == null || pictureFileName == "" || pictureFileName == "~//Images//")
        {
            heHasAccess = false;
        }

        
        
        //get width 
        try
        {
            if (Request.QueryString["w"] == null)
            {
                photoWidth = 0;
            }
            else
            {
                photoWidth = Int32.Parse(Request.QueryString["w"]);
            }
            if (Request.QueryString["h"] == null)
            {
                photoHeight = 0;
            }
            else
            {
                photoHeight = Int32.Parse(Request.QueryString["h"]);
            }
        }
        catch
        {
            photoWidth = 0;
            photoHeight = 0;
        }

        //if anything went wrong, show error picture 
        if (!heHasAccess)
        {
            inputImage = System.Drawing.Image.FromFile(Server.MapPath("Administrator/files/Design/empty.JPG"));
        }
        else
        {
            inputImage = System.Drawing.Image.FromFile(Server.MapPath(pictureFileName));
        }

        //if no width was given, assume the default now 
        if (photoWidth == 0)
        {
            if (!heHasAccess)
            {
                photoWidth = 100;
            }
            else
            {
                photoWidth = inputImage.Width;
            }
        }

        //define size for new image 
        if (photoWidth == 40)
        {
            photoHeight = 40;
        }
        else if (photoHeight == 0)
        {
            percentageDifference = inputImage.Width / photoWidth;
            photoHeight = inputImage.Height / percentageDifference;
        }

        //output new image with different size 
        Bitmap outputBitMap = new Bitmap(inputImage, Convert.ToInt32(photoWidth), Convert.ToInt32(photoHeight));
        Response.ContentType = "image/jpeg";
        outputBitMap.Save(Response.OutputStream, ImageFormat.Jpeg);
        inputImage.Dispose();
    } 
</script>

