﻿using System.Security.Principal;

namespace Nodus.Authentication
{
    public interface ICustomPrincipal : IPrincipal
    {
        //bool Login(string cookieString);
        bool Login(string userName, string id, bool rememberMe,int roleid);
        bool Login(string userName);
        void Logout();
    }
}