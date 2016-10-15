namespace dsm_win
{
    partial class frmJudges
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnSave = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.cboShowClasses = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtPrimaryJudge = new System.Windows.Forms.TextBox();
            this.txtReserveJudge = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(325, 200);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 23);
            this.btnSave.TabIndex = 27;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(406, 200);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 26;
            this.btnExit.Text = "Exit";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(8, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(43, 13);
            this.label1.TabIndex = 29;
            this.label1.Text = "Classes";
            // 
            // cboShowClasses
            // 
            this.cboShowClasses.FormattingEnabled = true;
            this.cboShowClasses.Location = new System.Drawing.Point(57, 6);
            this.cboShowClasses.Name = "cboShowClasses";
            this.cboShowClasses.Size = new System.Drawing.Size(421, 21);
            this.cboShowClasses.TabIndex = 28;
            this.cboShowClasses.SelectedIndexChanged += new System.EventHandler(this.cboShowClasses_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 13);
            this.label2.TabIndex = 30;
            this.label2.Text = "Primary Judge";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(13, 85);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(79, 13);
            this.label3.TabIndex = 31;
            this.label3.Text = "Reserve Judge";
            // 
            // txtPrimaryJudge
            // 
            this.txtPrimaryJudge.Location = new System.Drawing.Point(97, 55);
            this.txtPrimaryJudge.Name = "txtPrimaryJudge";
            this.txtPrimaryJudge.Size = new System.Drawing.Size(381, 20);
            this.txtPrimaryJudge.TabIndex = 32;
            // 
            // txtReserveJudge
            // 
            this.txtReserveJudge.Location = new System.Drawing.Point(97, 82);
            this.txtReserveJudge.Name = "txtReserveJudge";
            this.txtReserveJudge.Size = new System.Drawing.Size(381, 20);
            this.txtReserveJudge.TabIndex = 33;
            // 
            // frmJudges
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(486, 227);
            this.Controls.Add(this.txtReserveJudge);
            this.Controls.Add(this.txtPrimaryJudge);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cboShowClasses);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnExit);
            this.Name = "frmJudges";
            this.Text = "frmJudges";
            this.Load += new System.EventHandler(this.frmJudges_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cboShowClasses;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtPrimaryJudge;
        private System.Windows.Forms.TextBox txtReserveJudge;
    }
}