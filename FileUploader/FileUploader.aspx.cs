using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileUploader
{
    public partial class FileUploader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
                Label4.Text = "image uploded";
                Image1.ImageUrl = @"~/img/" + FileUpload1.FileName;
            }
            else
            {
                Label4.Text = "select image";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string filepath = Path.GetFileName(FileUpload2.PostedFile.FileName);
            string fextn = Path.GetExtension(filepath);
            int size = FileUpload2.PostedFile.ContentLength;

            if(FileUpload2.HasFile) {
                if (fextn.ToLower() != ".doc" && fextn.ToLower() != ".docx")
                    Label5.Text = "Only .doc and .docx files are allowed!";
                else if (size < 1024)
                    Label5.Text = "File must be less than 1mb";
                else {
                    FileUpload2.SaveAs(Server.MapPath("~/doc/" + filepath));
                    Label5.Text = "Doc uploaded successfully!";
                }
            }
        }
    }
}