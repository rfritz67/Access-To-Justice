﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.17929
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ViewRes {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    public class Index {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal Index() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        public static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("Tals.ProBono.Web.Resources.Views.Home.Index", typeof(Index).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        public static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Name of your first pet?.
        /// </summary>
        public static string Question1 {
            get {
                return ResourceManager.GetString("Question1", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to High school mascot?.
        /// </summary>
        public static string Question2 {
            get {
                return ResourceManager.GetString("Question2", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Month you were born in?.
        /// </summary>
        public static string Question3 {
            get {
                return ResourceManager.GetString("Question3", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Favorite color?.
        /// </summary>
        public static string Question4 {
            get {
                return ResourceManager.GetString("Question4", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to City you were born in?.
        /// </summary>
        public static string Question5 {
            get {
                return ResourceManager.GetString("Question5", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Best man/maid of honor at your wedding?.
        /// </summary>
        public static string Question6 {
            get {
                return ResourceManager.GetString("Question6", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The Security Answer cannot be blank.
        /// </summary>
        public static string SecurityQuestionBlankError {
            get {
                return ResourceManager.GetString("SecurityQuestionBlankError", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Our volunteer lawyers answer legal questions for free. To use this web site, you must meet our rules about who we can help..
        /// </summary>
        public static string WelcomeMessage {
            get {
                return ResourceManager.GetString("WelcomeMessage", resourceCulture);
            }
        }
    }
}
