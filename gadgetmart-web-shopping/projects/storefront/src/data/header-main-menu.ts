import { MainMenuLink } from '../app/interfaces/main-menu-link';

export const mainMenu: MainMenuLink[] = [
    {
        title: 'Home',
        url: '/shop/shop-grid-6-full'
    },
    {
        title: 'Account',
        url: '/account',
        submenu: {
            type: 'menu',
            links: [
                {title: 'Login & Register', url: '/account/login'},
                {title: 'Dashboard', url: '/account/dashboard'},
                {title: 'Edit Profile', url: '/account/profile'},
                {title: 'Order History', url: '/account/orders'},
                {title: 'Order Details', url: '/account/order-details'},
                {title: 'Address Book', url: '/account/addresses'},
                {title: 'Edit Address', url: '/account/edit-address'},
                {title: 'Change Password', url: '/account/password'},
            ],
        },
    }
];
