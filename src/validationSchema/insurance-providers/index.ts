import * as yup from 'yup';

export const insuranceProviderValidationSchema = yup.object().shape({
  company_name: yup.string().nullable(),
  coverage: yup.string().nullable(),
  user_id: yup.string().nullable().required(),
  organization_id: yup.string().nullable().required(),
});
