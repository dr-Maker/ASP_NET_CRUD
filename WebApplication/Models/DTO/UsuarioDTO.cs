using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication.Data;


namespace WebApplication.Models.DTO
{
    public class UsuarioDTO
    {

        public List<UsuarioModel> Listar() {

            using (crud_mvcEntities1 db = new crud_mvcEntities1()) {
                var lista = (
                    from u in db.Usuario
                    select new UsuarioModel
                    {
                        _IdUsuario = u.IdUsuario,
                        _Usuario = u.Usuario1,
                        _Clave = u.Clave,
                        _Status = u.IdStatus,
                        _Rol = u.IdRol
                    }).ToList();

                return lista;
            }


          
        }

    }
}