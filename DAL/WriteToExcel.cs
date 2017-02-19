using System;
using System.Collections.Generic;
using System.Text;
using System.Data.OleDb;
using System.Data;

namespace DAL
{
   public class WriteToExcel
    {


        private string GenerateCreateTable(string tableName, List<string> Fields)
        {

            StringBuilder sb = new StringBuilder();
            bool firstcol = true;
            sb.AppendFormat("CREATE TABLE [{0}](", tableName);
            firstcol = true;
            foreach (string  keyvalue in Fields)
            {
                if (!firstcol)
                {
                    sb.Append(",");
                }
                firstcol = false;
                sb.AppendFormat("{0} {1}", keyvalue, "MEMO");
            }

            sb.Append(")");
            return sb.ToString();
        }


        public bool WriteTable(DataTable tblData,string path)
        {
            List<string> Fields=new List<string>();
            OleDbConnection cnn = new OleDbConnection();

            foreach (DataColumn clm in tblData.Columns)
            {
                Fields.Add(clm.ColumnName);
            }

            tblData.TableName = "tblExcelOut";

            try
            {
                string filepath = string.Format(@"{0}\ExcelOut.xls", path);
                string excelObject = "Provider=Microsoft.{0}.OLEDB.{1};Data Source={2};Extended Properties=\"Excel {3};HDR=YES\"";
                string cnstr = string.Format(excelObject, "Jet", "4.0", filepath, "8.0");

                System.IO.File.Delete(filepath);

                cnn.ConnectionString = cnstr;
                using (OleDbCommand cmd = new OleDbCommand(this.GenerateCreateTable(tblData.TableName, Fields), cnn))
                {
                    if (cnn.State != ConnectionState.Open) cnn.Open();

                    //create table
                    cmd.ExecuteNonQuery();
                    //write data
                    foreach (DataRow dr in tblData.Rows)
                    {
                        AddNewRow(dr,cnn);
                    }

                    cnn.Close();
                    return true;
                }
            }
            catch 
            {
                if (cnn.State == ConnectionState.Open) cnn.Close();
                return false;
            }
           
        }


        public bool AddNewRow(DataRow dr,OleDbConnection cnn)
        {

            using (OleDbCommand cmd = new OleDbCommand(this.GenerateInsertStatement(dr), cnn))
            {
                cmd.ExecuteNonQuery();
            }
            return true;
        }

        private string GenerateInsertStatement(DataRow dr)
        {
            StringBuilder sb = new StringBuilder();
            bool firstcol = true;
            sb.AppendFormat("INSERT INTO [{0}](", dr.Table.TableName);


            foreach (DataColumn dc in dr.Table.Columns)
            {
                if (!firstcol)
                {
                    sb.Append(",");
                }
                firstcol = false;

                sb.Append(dc.Caption);
            }

            sb.Append(") VALUES(");
            firstcol = true;
            for (int i = 0; i <= dr.Table.Columns.Count - 1; i++)
            {
                if (!object.ReferenceEquals(dr.Table.Columns[i].DataType, typeof(int)))
                {
                    sb.Append("'");
                    sb.Append(dr[i].ToString().Replace("'", "''"));
                    sb.Append("'");
                }
                else
                {
                    sb.Append(dr[i].ToString().Replace("'", "''"));
                }
                if (i != dr.Table.Columns.Count - 1)
                {
                    sb.Append(",");
                }
            }

            sb.Append(")");
            return sb.ToString();
        }

    }
}
