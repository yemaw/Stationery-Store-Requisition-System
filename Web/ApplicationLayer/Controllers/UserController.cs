using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ApplicationLayer.Utils;
namespace ApplicationLayer.Controllers
{
    public class UserController : MainController
    {
        public List<User> actionGetSuppliers()
        {
            return data.Users.ToList();
        }

        public User actionGetUserByID(int id)
        {
            return data.Users.Where(o => o.id == id).SingleOrDefault();
        }

        public List<UserView> actionGetUserViews() {
            return data.UserViews.ToList();
        }

        public List<UserView> actionGetDepartmentSideUserViews() {
            return data.UserViews.Where(o=> (o.user_type == 1 || o.user_type == 2 || o.user_type == 3)).ToList();
        }

        public UserView actionGetUserViewByUserID(int idIn) {
            return data.UserViews.Where(o => o.id == idIn).SingleOrDefault();
        }

        public List<User> actionGetEmployeesByDepartmentID(int dept_id) {
            return data.Users.Where(o=> o.department == dept_id && o.user_type == 1).ToList();
        }

        public Message actionGiveHeadPermissionToAnEmployee(int user_id, int dept_id) {
            User user = data.Users.Where(o => (o.id == user_id)).SingleOrDefault();
            if (user.department == dept_id)
            {
                user.user_type = 2;
                data.SaveChanges();
                return new Message(true, "Delegated");
            }
            else {
                return new Message(false, "Not Allow to change user from other department as Delegated User");
            }

        }

        public List<User> actionGetHeadDelegatedUsersByDepartmentID(int dept_id) {
           return data.Users.Where(o=> (o.department == dept_id && o.user_type ==2)).ToList();
        }

        public Message actionRemoveHeadPermissionFromAnEmployee(int user_id, int dept_id)
        {
            User user = data.Users.Where(o => (o.id == user_id)).SingleOrDefault();
            if (user.department == dept_id)
            {
                user.user_type = 1;
                data.SaveChanges();
                return new Message(true, "Removed.");
            }
            else
            {
                return new Message(false, "Emplyoee and Department Mismatch.");
            }

        }

        public Message actionCreateUser(User objIn)
        {
            AuthenticationController authController = new AuthenticationController();
            try
            {
                User user = data.Users.Where(o => (o.username == objIn.username)).FirstOrDefault();
                if (user != null) {
                    return new Message(false, "Username already taken! User create failed.");
                }
                objIn.password = authController.getEncryptedString(objIn.password);
                data.Users.AddObject(objIn);
                return this.getNewDefaultMessageForDBOperations(data.SaveChanges() == 1);
            }
            catch (Exception e)
            {
                return this.getNewDefaultMessageForException(e);
            }
        }

        public Message actionUpdateUser(User objIn)
        {
            AuthenticationController authController = new AuthenticationController();
            try
            {
                User user = data.Users.Where(o => o.id == objIn.id).Single();
                //objIn.EntityKey = data.Users.Where(o => o.id == objIn.id).Single().EntityKey;

                //user.username = objIn.username;
                user.password = authController.getEncryptedString(objIn.password);
                user.firstname = objIn.firstname;
                user.lastname = objIn.lastname;
                user.email = objIn.email;
                user.phone_number = objIn.phone_number;
                user.department = objIn.department;
                user.user_type = objIn.user_type;

                //data.Users.ApplyCurrentValues(user);
                data.SaveChanges();
                return this.getNewDefaultMessageForDBOperations(true);
            }
            catch (Exception e)
            {
                return this.getNewDefaultMessageForException(e);
            }
        }

        public Message actionDeleteUserByID(int idIn)
        {
            try
            {
                data.Users.DeleteObject(data.Users.Where(o => o.id == idIn).Single());
                return this.getNewDefaultMessageForDBOperations(data.SaveChanges() == 1);
            }
            catch (Exception e)
            {
                return this.getNewDefaultMessageForException(e);
            }
        }

    }
}
