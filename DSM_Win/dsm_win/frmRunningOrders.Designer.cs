namespace dsm_win
{
    partial class frmRunningOrders
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
            this.btnExit = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.cboShowClasses = new System.Windows.Forms.ComboBox();
            this.dgvRunningOrders = new System.Windows.Forms.DataGridView();
            this.pnlRunningOrders = new System.Windows.Forms.Panel();
            this.btnClearRunningOrders = new System.Windows.Forms.Button();
            this.btnAllocateRunningOrders = new System.Windows.Forms.Button();
            this.btnGetRunningOrderList = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRunningOrders)).BeginInit();
            this.pnlRunningOrders.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(808, 581);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 27;
            this.btnExit.Text = "Back";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(7, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(43, 13);
            this.label1.TabIndex = 31;
            this.label1.Text = "Classes";
            // 
            // cboShowClasses
            // 
            this.cboShowClasses.FormattingEnabled = true;
            this.cboShowClasses.Location = new System.Drawing.Point(56, 12);
            this.cboShowClasses.Name = "cboShowClasses";
            this.cboShowClasses.Size = new System.Drawing.Size(421, 21);
            this.cboShowClasses.TabIndex = 30;
            this.cboShowClasses.SelectedIndexChanged += new System.EventHandler(this.cboShowClasses_SelectedIndexChanged);
            // 
            // dgvRunningOrders
            // 
            this.dgvRunningOrders.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRunningOrders.Location = new System.Drawing.Point(10, 74);
            this.dgvRunningOrders.Name = "dgvRunningOrders";
            this.dgvRunningOrders.Size = new System.Drawing.Size(873, 501);
            this.dgvRunningOrders.TabIndex = 35;
            // 
            // pnlRunningOrders
            // 
            this.pnlRunningOrders.Controls.Add(this.btnClearRunningOrders);
            this.pnlRunningOrders.Controls.Add(this.btnAllocateRunningOrders);
            this.pnlRunningOrders.Controls.Add(this.btnGetRunningOrderList);
            this.pnlRunningOrders.Location = new System.Drawing.Point(12, 36);
            this.pnlRunningOrders.Name = "pnlRunningOrders";
            this.pnlRunningOrders.Size = new System.Drawing.Size(873, 32);
            this.pnlRunningOrders.TabIndex = 36;
            // 
            // btnClearRunningOrders
            // 
            this.btnClearRunningOrders.Location = new System.Drawing.Point(344, 3);
            this.btnClearRunningOrders.Name = "btnClearRunningOrders";
            this.btnClearRunningOrders.Size = new System.Drawing.Size(163, 23);
            this.btnClearRunningOrders.TabIndex = 37;
            this.btnClearRunningOrders.Text = "Clear Running Orders";
            this.btnClearRunningOrders.UseVisualStyleBackColor = true;
            this.btnClearRunningOrders.Click += new System.EventHandler(this.btnClearRunningOrders_Click);
            // 
            // btnAllocateRunningOrders
            // 
            this.btnAllocateRunningOrders.Location = new System.Drawing.Point(176, 3);
            this.btnAllocateRunningOrders.Name = "btnAllocateRunningOrders";
            this.btnAllocateRunningOrders.Size = new System.Drawing.Size(163, 23);
            this.btnAllocateRunningOrders.TabIndex = 36;
            this.btnAllocateRunningOrders.Text = "Allocate Running Orders";
            this.btnAllocateRunningOrders.UseVisualStyleBackColor = true;
            this.btnAllocateRunningOrders.Click += new System.EventHandler(this.btnAllocateRunningOrders_Click);
            // 
            // btnGetRunningOrderList
            // 
            this.btnGetRunningOrderList.Location = new System.Drawing.Point(8, 3);
            this.btnGetRunningOrderList.Name = "btnGetRunningOrderList";
            this.btnGetRunningOrderList.Size = new System.Drawing.Size(163, 23);
            this.btnGetRunningOrderList.TabIndex = 35;
            this.btnGetRunningOrderList.Text = "Get Running Order List";
            this.btnGetRunningOrderList.UseVisualStyleBackColor = true;
            this.btnGetRunningOrderList.Click += new System.EventHandler(this.btnGetRunningOrderList_Click);
            // 
            // frmRunningOrders
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(895, 616);
            this.Controls.Add(this.pnlRunningOrders);
            this.Controls.Add(this.dgvRunningOrders);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cboShowClasses);
            this.Controls.Add(this.btnExit);
            this.Name = "frmRunningOrders";
            this.Text = "frmRunningOrders";
            this.Load += new System.EventHandler(this.frmRunningOrders_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvRunningOrders)).EndInit();
            this.pnlRunningOrders.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cboShowClasses;
        private System.Windows.Forms.DataGridView dgvRunningOrders;
        private System.Windows.Forms.Panel pnlRunningOrders;
        private System.Windows.Forms.Button btnClearRunningOrders;
        private System.Windows.Forms.Button btnAllocateRunningOrders;
        private System.Windows.Forms.Button btnGetRunningOrderList;
    }
}