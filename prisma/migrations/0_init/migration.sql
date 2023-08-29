-- CreateTable
CREATE TABLE "appointment" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "date" DATE,
    "time" TIME(6),
    "status" VARCHAR(100),
    "user_id" UUID NOT NULL,
    "healthcare_provider_id" UUID NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "appointment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "healthcare_provider" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "specialization" VARCHAR(100),
    "qualification" VARCHAR(100),
    "experience" INTEGER,
    "user_id" UUID NOT NULL,
    "organization_id" UUID NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "healthcare_provider_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "insurance_provider" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "company_name" VARCHAR(100),
    "coverage" VARCHAR(100),
    "user_id" UUID NOT NULL,
    "organization_id" UUID NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "insurance_provider_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "medical_staff" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "position" VARCHAR(100),
    "work_shift" VARCHAR(100),
    "user_id" UUID NOT NULL,
    "organization_id" UUID NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "medical_staff_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "organization" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "description" VARCHAR(255),
    "name" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "user_id" UUID NOT NULL,
    "tenant_id" VARCHAR(255) NOT NULL,

    CONSTRAINT "organization_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "email" VARCHAR(255) NOT NULL,
    "firstName" VARCHAR(255),
    "lastName" VARCHAR(255),
    "roq_user_id" VARCHAR(255) NOT NULL,
    "tenant_id" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");

-- AddForeignKey
ALTER TABLE "appointment" ADD CONSTRAINT "appointment_healthcare_provider_id_fkey" FOREIGN KEY ("healthcare_provider_id") REFERENCES "healthcare_provider"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "appointment" ADD CONSTRAINT "appointment_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "healthcare_provider" ADD CONSTRAINT "healthcare_provider_organization_id_fkey" FOREIGN KEY ("organization_id") REFERENCES "organization"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "healthcare_provider" ADD CONSTRAINT "healthcare_provider_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "insurance_provider" ADD CONSTRAINT "insurance_provider_organization_id_fkey" FOREIGN KEY ("organization_id") REFERENCES "organization"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "insurance_provider" ADD CONSTRAINT "insurance_provider_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "medical_staff" ADD CONSTRAINT "medical_staff_organization_id_fkey" FOREIGN KEY ("organization_id") REFERENCES "organization"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "medical_staff" ADD CONSTRAINT "medical_staff_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "organization" ADD CONSTRAINT "organization_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

