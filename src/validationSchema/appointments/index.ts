import * as yup from 'yup';

export const appointmentValidationSchema = yup.object().shape({
  date: yup.date().nullable(),
  time: yup.date().nullable(),
  status: yup.string().nullable(),
  user_id: yup.string().nullable().required(),
  healthcare_provider_id: yup.string().nullable().required(),
});
