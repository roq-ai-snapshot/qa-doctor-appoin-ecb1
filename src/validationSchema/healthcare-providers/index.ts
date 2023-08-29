import * as yup from 'yup';

export const healthcareProviderValidationSchema = yup.object().shape({
  specialization: yup.string().nullable(),
  qualification: yup.string().nullable(),
  experience: yup.number().integer().nullable(),
  user_id: yup.string().nullable().required(),
  organization_id: yup.string().nullable().required(),
});
