<?php

class PrivilegedUser
{
    private $roles;

    // override User method
    public static function getByUsername($username) {

        include('../dbconfig.php');
        //select * from user where email='$user'
        $sql = " SELECT * FROM admin WHERE user = '$username' ";
        $stmt = mysqli_query($conn,$sql);
        $result = mysqli_fetch_array($stmt);

        if ($result)
        {
            $privUser = new PrivilegedUser();
            $privUser->admin_id = $result["id"];
            //$privUser->password = $result["password"];
            $privUser->user = $username;
            $privUser->initRoles($privUser->id);
            return $privUser;
        }
        else
        {
            return false;
        }
    }

    // populate roles with their associated permissions
    protected function initRoles($id)
    {
        include('../dbconfig.php');
        $this->roles = array();
        $sql = "SELECT t1.role_id, t2.role_name FROM user_role as t1
                JOIN roles as t2 ON t1.role_id = t2.role_id
                WHERE t1.id = '$id' ";
        $stmt = mysqli_query($conn,$sql);

        while($row = mysqli_fetch_array($stmt))
        {
            $this->roles[$row["role_name"]] = Role::getRolePerms($row["role_id"]);
        }
    }

    // check if user has a specific privilege
    public function hasPrivilege($perm)
    {
        foreach ($this->roles as $role)
        {
            if ($role->hasPerm($perm))
            {
                return true;
            }
        }
        return false;
    }
}
