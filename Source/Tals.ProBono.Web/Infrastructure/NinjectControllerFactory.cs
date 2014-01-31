﻿using System;
using System.Configuration;
using System.Web.Mvc;
using System.Web.Routing;
using Ninject;
using Ninject.Modules;
using Tals.ProBono.Domain.Abstract;
using Tals.ProBono.Domain.Concrete;
using Tals.ProBono.Domain.Services;
using Tals.ProBono.Web.Models;

namespace Tals.ProBono.Web.Infrastructure
{
    public class NinjectControllerFactory : DefaultControllerFactory
    {
        // A Ninject "kernel" is the thing that can supply object instances
        private readonly IKernel _kernel = new StandardKernel(new LegalAdviceServices());

        // ASP.NET MVC calls this to get the controller for each request
        protected override IController GetControllerInstance(RequestContext context, Type controllerType)
        {
            if (controllerType == null)
                return null;
            return (IController)_kernel.Get(controllerType);
        }

        // Configures how abstract service types are mapped to concrete implementations
    }

    public class LegalAdviceServices : NinjectModule
    {
        public override void Load()
        {
            Recaptcha.RecaptchaControlMvc.PrivateKey = ConfigurationManager.AppSettings["ReCaptchaPrivateKey"];
            Recaptcha.RecaptchaControlMvc.PublicKey = ConfigurationManager.AppSettings["ReCaptchaPublicKey"];

            Bind<IQuestionRepository>().To<QuestionRepositorySql>().InRequestScope();
            Bind<IFormsAuthenticationService>().To<FormsAuthenticationService>();
            Bind<IMembershipService>().To<AccountMembershipService>();
            Bind<IEmailService>().To<EmailService>();
            Bind<IEligibilityService>().To<EligibilityService>();
            Bind<ISecurityService>().To<SecurityService>();
            Bind<IRoles>().To<RolesWrapper>();
            Bind<IRepositoryFactory>().To<RepositoryFactory>();
            Bind(typeof(IRepository<>)).To(typeof(EntityRepository<>)).InRequestScope();
            Bind<IUser>().ToMethod(x => UserModel.Current);
            Bind<IAuditor>().To<Auditor>();
        }
    }
}