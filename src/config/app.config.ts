interface AppConfigInterface {
  ownerRoles: string[];
  customerRoles: string[];
  tenantRoles: string[];
  tenantName: string;
  applicationName: string;
  addOns: string[];
}
export const appConfig: AppConfigInterface = {
  ownerRoles: ['System Administrator'],
  customerRoles: ['Guest'],
  tenantRoles: ['System Administrator', 'Healthcare Provider', 'Medical Staff', 'Insurance Provider'],
  tenantName: 'Organization',
  applicationName: 'QA Doctor appointment system',
  addOns: ['file upload', 'chat', 'notifications', 'file'],
};
