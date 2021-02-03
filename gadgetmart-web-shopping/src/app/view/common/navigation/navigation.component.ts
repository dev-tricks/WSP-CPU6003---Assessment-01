import {Component, EventEmitter, OnInit, Output} from '@angular/core';
import {Router, RoutesRecognized} from '@angular/router';
import { SupplierComponent } from '../../master/supplier/supplier.component';
import {OrderComponent} from '../../master/order/order.component';

export enum NavigationMenuTypes {
  MASTER,
  OVERVIEW
}

export const NavigationMenus = [
  {
    title: 'MASTER',
    description: ''
  },
  {
    title: 'OVERVIEW',
    description: ''
  }
];

@Component({
  selector: 'app-navigation',
  templateUrl: './navigation.component.html'
})
export class NavigationComponent implements OnInit {

  NavigationMenuTypes: typeof NavigationMenuTypes = NavigationMenuTypes;
  public activeMenu: NavigationMenuTypes;
  @Output() public changeMenu = new EventEmitter<NavigationMenuTypes>();

  constructor(private router: Router) {
  }

  ngOnInit() {
    // a little hack
    this.router.events.subscribe((event) => {
      if (event instanceof RoutesRecognized) {
        switch (event.state.root.firstChild.component) {
          case SupplierComponent:
            this.setActiveMenu(NavigationMenuTypes.MASTER);
            break;
          case OrderComponent:
            this.setActiveMenu(NavigationMenuTypes.MASTER);
            break;
          default:
            this.setActiveMenu(NavigationMenuTypes.OVERVIEW);
            break;
        }
      }
    });
  }

  setActiveMenu(activeMenu: NavigationMenuTypes): void {
    this.activeMenu = activeMenu;
    this.changeMenu.emit(this.activeMenu);
  }

  isMainFunctionsActive(): boolean {
    return this.activeMenu !== NavigationMenuTypes.OVERVIEW;
  }


}
