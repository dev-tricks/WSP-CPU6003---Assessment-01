import { Component, OnDestroy, OnInit } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { AccountApi } from '../../../../api/base';
import { Router } from '@angular/router';


@Component({
    selector: 'app-layout',
    templateUrl: './layout.component.html',
    styleUrls: ['./layout.component.scss'],
})
export class LayoutComponent implements OnInit, OnDestroy {
    private destroy$: Subject<void> = new Subject<void>();

    navigation = [];

    constructor(
        private account: AccountApi,
        private translate: TranslateService,
        private router: Router,
    ) { }

    ngOnInit(): void {
        this.initNavigation();
        this.translate.onLangChange.pipe(takeUntil(this.destroy$)).subscribe(() => this.initNavigation());
    }

    ngOnDestroy(): void {
        this.destroy$.next();
        this.destroy$.complete();
    }

    logout(): void {
        this.account.signOut().pipe(takeUntil(this.destroy$)).subscribe(() => {
            this.router.navigateByUrl('/account/login').then();
        });
    }

    private initNavigation(): void {
        this.navigation = [
            {type: 'link', label: this.translate.instant('LINK_ACCOUNT_DASHBOARD'), url: '/account/dashboard'},
            {type: 'link', label: this.translate.instant('LINK_ACCOUNT_PROFILE'), url: '/account/profile'},
            {type: 'link', label: this.translate.instant('LINK_ACCOUNT_PASSWORD'), url: '/account/password'},
        ];
    }
}
