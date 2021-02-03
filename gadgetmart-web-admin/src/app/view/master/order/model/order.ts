import {Injectable} from '@angular/core';

@Injectable()
export class Order {
  bookingId: number;
  bookingNumber: number;
  doctorName: string;
  customerName: string;
  sessionDate: string;
  startTime: string;
  endTime: string;
}
