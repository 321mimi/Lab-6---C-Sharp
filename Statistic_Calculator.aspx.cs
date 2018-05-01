using System;
using System.Collections.Generic;

public partial class Statistic_Calculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            try
            {
                // Numbers list
                List<double> num = new List<double>
                {
                    double.Parse(txtNum1.Text),
                    double.Parse(txtNum2.Text),
                    double.Parse(txtNum3.Text)
                };

                // Maximum
                double max = num[0];
                for (int i = 1; i < num.Count; i++)
                {
                    if (max < num[i])
                    {
                        max = num[i];
                    }
                }

                // Minimum
                double min = num[0];
                for (int i = 1; i < num.Count; i++)
                {
                    if (num[i] < min)
                    {
                        min = num[i];
                    }
                }

                // Average
                double avg = (num[0] + num[1] + num[2]) / 3;

                // Total
                double tot = num[0] + num[1] + num[2];

                maximumResult.Text = max.ToString();
                minimumResult.Text = min.ToString();
                averageResult.Text = avg.ToString();
                totalResult.Text = tot.ToString();
                lblError.Visible = false;


            }
            catch (Exception ex)
            {
                maximumResult.Text = "";
                minimumResult.Text = "";
                averageResult.Text = "";
                totalResult.Text = "";
                lblError.Text = ex.Message;
                lblError.Visible = true;
            }
        }
        else
        {
            lblError.Visible = false;
        }
    }
}