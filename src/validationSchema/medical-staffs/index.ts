import * as yup from 'yup';

export const medicalStaffValidationSchema = yup.object().shape({
  position: yup.string().nullable(),
  work_shift: yup.string().nullable(),
  user_id: yup.string().nullable().required(),
  organization_id: yup.string().nullable().required(),
});
