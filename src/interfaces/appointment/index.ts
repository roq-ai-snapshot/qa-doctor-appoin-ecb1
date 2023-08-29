import { UserInterface } from 'interfaces/user';
import { HealthcareProviderInterface } from 'interfaces/healthcare-provider';
import { GetQueryInterface } from 'interfaces';

export interface AppointmentInterface {
  id?: string;
  date?: any;
  time?: any;
  status?: string;
  user_id: string;
  healthcare_provider_id: string;
  created_at?: any;
  updated_at?: any;

  user?: UserInterface;
  healthcare_provider?: HealthcareProviderInterface;
  _count?: {};
}

export interface AppointmentGetQueryInterface extends GetQueryInterface {
  id?: string;
  status?: string;
  user_id?: string;
  healthcare_provider_id?: string;
}
