namespace dsm_win
{
    partial class frmShowClasses
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
            this.cboShowClasses = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.cboClassNames = new System.Windows.Forms.ComboBox();
            this.cboClassGender = new System.Windows.Forms.ComboBox();
            this.numClassNumber = new System.Windows.Forms.NumericUpDown();
            this.MessageLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.numClassNumber)).BeginInit();
            this.SuspendLayout();
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(326, 199);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 23);
            this.btnSave.TabIndex = 25;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(407, 199);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 24;
            this.btnExit.Text = "Exit";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // cboShowClasses
            // 
            this.cboShowClasses.FormattingEnabled = true;
            this.cboShowClasses.Location = new System.Drawing.Point(61, 6);
            this.cboShowClasses.Name = "cboShowClasses";
            this.cboShowClasses.Size = new System.Drawing.Size(421, 21);
            this.cboShowClasses.TabIndex = 26;
            this.cboShowClasses.SelectedIndexChanged += new System.EventHandler(this.cboShowClasses_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(43, 13);
            this.label1.TabIndex = 27;
            this.label1.Text = "Classes";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 83);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(63, 13);
            this.label2.TabIndex = 28;
            this.label2.Text = "Class Name";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 54);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(72, 13);
            this.label3.TabIndex = 29;
            this.label3.Text = "Class Number";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 112);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 13);
            this.label4.TabIndex = 30;
            this.label4.Text = "Class Gender";
            // 
            // cboClassNames
            // 
            this.cboClassNames.FormattingEnabled = true;
            this.cboClassNames.Location = new System.Drawing.Point(89, 80);
            this.cboClassNames.Name = "cboClassNames";
            this.cboClassNames.Size = new System.Drawing.Size(393, 21);
            this.cboClassNames.TabIndex = 31;
            // 
            // cboClassGender
            // 
            this.cboClassGender.FormattingEnabled = true;
            this.cboClassGender.Location = new System.Drawing.Point(89, 109);
            this.cboClassGender.Name = "cboClassGender";
            this.cboClassGender.Size = new System.Drawing.Size(169, 21);
            this.cboClassGender.TabIndex = 32;
            // 
            // numClassNumber
            // 
            this.numClassNumber.Location = new System.Drawing.Point(89, 52);
            this.numClassNumber.Name = "numClassNumber";
            this.numClassNumber.Size = new System.Drawing.Size(47, 20);
            this.numClassNumber.TabIndex = 33;
            // 
            // MessageLabel
            // 
            this.MessageLabel.AutoSize = true;
            this.MessageLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MessageLabel.ForeColor = System.Drawing.Color.Red;
            this.MessageLabel.Location = new System.Drawing.Point(6, 147);
            this.MessageLabel.Name = "MessageLabel";
            this.MessageLabel.Size = new System.Drawing.Size(54, 17);
            this.MessageLabel.TabIndex = 34;
            this.MessageLabel.Text = "Status";
            // 
            // frmShowClasses
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(486, 227);
            this.Controls.Add(this.MessageLabel);
            this.Controls.Add(this.numClassNumber);
            this.Controls.Add(this.cboClassGender);
            this.Controls.Add(this.cboClassNames);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cboShowClasses);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnExit);
            this.Name = "frmShowClasses";
            this.Text = "frmShowClasses";
            this.Load += new System.EventHandler(this.frmShowClasses_Load);
            ((System.ComponentModel.ISupportInitialize)(this.numClassNumber)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.ComboBox cboShowClasses;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cboClassNames;
        private System.Windows.Forms.ComboBox cboClassGender;
        private System.Windows.Forms.NumericUpDown numClassNumber;
        private System.Windows.Forms.Label MessageLabel;
    }
}