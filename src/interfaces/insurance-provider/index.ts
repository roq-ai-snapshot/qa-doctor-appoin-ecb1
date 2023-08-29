import { UserInterface } from 'interfaces/user';
import { OrganizationInterface } from 'interfaces/organization';
import { GetQueryInterface } from 'interfaces';

export interface InsuranceProviderInterface {
  id?: string;
  company_name?: string;
  coverage?: string;
  user_id: string;
  organization_id: string;
  created_at?: any;
  updated_at?: any;

  user?: UserInterface;
  organization?: OrganizationInterface;
  _count?: {};
}

export interface InsuranceProviderGetQueryInterface extends GetQueryInterface {
  id?: string;
  company_name?: string;
  coverage?: string;
  user_id?: string;
  organization_id?: string;
}
