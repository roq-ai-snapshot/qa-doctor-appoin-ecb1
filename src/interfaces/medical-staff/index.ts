import { UserInterface } from 'interfaces/user';
import { OrganizationInterface } from 'interfaces/organization';
import { GetQueryInterface } from 'interfaces';

export interface MedicalStaffInterface {
  id?: string;
  position?: string;
  work_shift?: string;
  user_id: string;
  organization_id: string;
  created_at?: any;
  updated_at?: any;

  user?: UserInterface;
  organization?: OrganizationInterface;
  _count?: {};
}

export interface MedicalStaffGetQueryInterface extends GetQueryInterface {
  id?: string;
  position?: string;
  work_shift?: string;
  user_id?: string;
  organization_id?: string;
}
