import { Component, OnInit, ViewChild } from '@angular/core';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { SnotifyService } from 'ng-snotify';
import { AppSettings } from 'src/app/settings/app-settings';
import { NgxSpinnerService } from "ngx-spinner";
import { CommonService } from './service/common.service';
import { Supplier } from './model/supplier';

@Component({
  selector: 'app-supplier',
  templateUrl: './supplier.component.html',
  styleUrls: ['./supplier.component.css']
})
export class SupplierComponent implements OnInit {

  @ViewChild('inputForm') inputForm;
  public supplierList: Supplier[] = [];
  public supplier = new Supplier();

  constructor(
    private ngxSmartModalService: NgxSmartModalService,
    private snotifyService: SnotifyService,
    private ngxSpinnerService: NgxSpinnerService,
    private commonService: CommonService) { }

  ngOnInit() {
    this.findAll();
  }

  openMasterForm() {
    this.supplier = new Supplier();
    this.ngxSmartModalService.open('masterForm');
  }

  findAll() {
    this.ngxSpinnerService.show();
    this.commonService.findAll().subscribe((data) => {
      this.supplierList = data;
               this.ngxSpinnerService.hide();
    }, (e) => {
      this.supplierList = [];
      this.ngxSpinnerService.hide();
    });
  }

  edit(rowNo, data) {
    this.supplier = data;
    this.ngxSmartModalService.open('masterForm');
  }

  delete(rowNo,data) {
    this.snotifyService.confirm('Confirm ?..', AppSettings.MESSAGE_WARNING, {
      timeout: 5000,
      showProgressBar: false,
      closeOnClick: false,
      pauseOnHover: false,
      buttons: [
        {
          text: 'Yes, Delete It..', action: (toast) => {
            this.ngxSpinnerService.show();
            this.commonService.delete(data.id).subscribe((data) => {
              this.snotifyService.success('Delete supplier success', AppSettings.MESSAGE_SUCCESS, {
                timeout: 2000,
                showProgressBar: false,
                closeOnClick: false,
                pauseOnHover: false
              });
              this.supplierList.splice(rowNo, 1);
              this.snotifyService.remove(toast.id);
              this.ngxSpinnerService.hide();
            }, (e) => {
              console.log(e)
              this.ngxSpinnerService.hide();
              this.snotifyService.error('Delete supplier error', AppSettings.MESSAGE_ERROR, {
                timeout: 2000,
                showProgressBar: false,
                closeOnClick: false,
                pauseOnHover: false
              });
            });
          }
        },
        {
          text: 'No', action: (toast) => {
            this.snotifyService.remove(toast.id);
          }, bold: true
        },
      ]
    });
  }

  save() {
    if (this.inputForm.invalid) {
      this.snotifyService.error('Please fill the all text', AppSettings.MESSAGE_WARNING, {
        timeout: 2000,
        showProgressBar: false,
        closeOnClick: false,
        pauseOnHover: true
      });
    } else {
      let that = this;
      this.snotifyService.confirm('Confirm ?..', AppSettings.MESSAGE_INFO, {
        timeout: 5000,
        showProgressBar: false,
        closeOnClick: false,
        pauseOnHover: false,
        buttons: [
          {
            text: 'Yes, Save It..', action: (toast) => {
              that.ngxSpinnerService.show();
              that.commonService.save(that.supplier).subscribe((data) => {
                that.findAll();
                that.snotifyService.remove(toast.id);
                that.ngxSmartModalService.close('masterForm');
                that.snotifyService.success('Add new supplier success', AppSettings.MESSAGE_SUCCESS, {
                  timeout: 2000,
                  showProgressBar: false,
                  closeOnClick: false,
                  pauseOnHover: false
                });
              }, (e) => {
                that.ngxSpinnerService.hide();
                that.snotifyService.error('Add new supplier error', AppSettings.MESSAGE_ERROR, {
                  timeout: 2000,
                  showProgressBar: false,
                  closeOnClick: false,
                  pauseOnHover: false
                });
              });
              that.snotifyService.remove(toast.id);
            }
          },
          {
            text: 'No', action: (toast) => {
              this.snotifyService.remove(toast.id);
            }, bold: true
          },
        ]
      });
    }
  }

  clear() {
    this.supplier = new Supplier();
    this.ngxSmartModalService.close('masterForm');
  }

  new() {
    this.ngxSmartModalService.open('masterForm');
    this.supplier = new Supplier();
  }
}
