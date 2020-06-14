var sql = ``


let menus = require('./menu.json');

// M:目录
// C:菜单
// F:按钮
var sql = `
DELETE  FROM sys_menu WHERE menu_id>=2000;
`;

menus.forEach((M, M_order_num) => {
    M_order_num+=10;
    sql += `INSERT INTO sys_menu(menu_id, menu_name, parent_id, order_num, path, component, is_frame, menu_type, visible, status,perms, icon, create_by, update_by, remark) VALUES (${M.menuId}, '${M.menuName}', '0', '${M_order_num}', '${M.path}', NULL, 1, 'M', '0', '0', '', '${M.icon}', 'admin', 'ry', '${M.menuName}-M');\n`

    M.children.forEach((C, C_order_nume) => {
        sql += `INSERT INTO sys_menu(menu_id, menu_name, parent_id, order_num, path, component, is_frame, menu_type,visible, status,perms, icon, create_by, update_by, remark) VALUES (${C.menuId}, '${C.menuName}', ${M.menuId}, '${C_order_nume}', '${C.path}', '${M.path}/${C.path}/index', 1, 'C', '0', '0', '${M.path}:${C.path}:list','${C.icon}', 'admin', 'ry', '${C.menuName}-C');\n`;

        C.children.forEach((F, F_order_num) => {
            sql += `INSERT INTO sys_menu(menu_id, menu_name, parent_id, order_num, path, component, is_frame, menu_type, visible, status,perms, icon, create_by, update_by, remark) VALUES (${F.menuId}, '${F.menuName}', ${C.menuId}, '${F_order_num}', '', '', 1, 'F', '0', '0', '${M.path}:${C.path}:${F.perms}', '#', 'admin','ry', '${F.menuName}-F');\n`
        });
    });


});
console.log(sql);
