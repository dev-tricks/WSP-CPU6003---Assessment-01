import {Component, OnInit} from '@angular/core';
// import {CommonService} from '.././m-doctor/service/common.service';
// import {Order} from './model/appointment-details';
// import {NgxSpinnerService} from 'ngx-spinner';
// import {Doctor} from '../m-doctor/model/supplier';

@Component({
  selector: 'app-order',
  templateUrl: './order.component.html',
  styleUrls: ['./order.component.css']
})
export class OrderComponent implements OnInit {

  // public appointmentDetailsList: Order[] = [];
  // public doctorList: Doctor[] = [];
  // selectedValue = 1;

  // constructor(private commonService: CommonService,
  //             private ngxSpinnerService: NgxSpinnerService) {
  // }

  ngOnInit() {
  //   this.findAllAppointments();
  //   this.findAllDoctors();
  }

  // findAllAppointments() {
  //   this.ngxSpinnerService.show();
  //   this.commonService.findAllAppointments().subscribe((data) => {
  //     this.appointmentDetailsList = data;
  //     this.ngxSpinnerService.hide();
  //   }, (e) => {
  //     this.appointmentDetailsList = [];
  //     this.ngxSpinnerService.hide();
  //   });
  // }

  // findAllDoctors() {
  //   this.commonService.findAllDoctors().subscribe((data) => {
  //     this.doctorList = data;
  //   }, (e) => {
  //     console.log(e.toString());
  //   });
  // }

  // selectOption(event) {
  //   console.log(event.target.value.toString());
  //   console.log(this.selectedValue);
  // }

}
