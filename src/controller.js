import {pool} from './database.js';

class libroController{

    async getAll(req, res){
        const [result] = await pool.query('SELECT * FROM libros');
        res.json(result);
    }

    async getOne(req, res) {
        const { id } = req.params;
        try {
            
            const [result] = await pool.query("SELECT * FROM libros WHERE id = (?)", [id]);
    
            
            if (result.length === 0) {
                res.status(404).json({ message: "Libro no encontrado" });
            } else {
                res.json(result[0]);
            }
        } catch (error) {
            
            res.status(500).json({ message: "Error al obtener el libro", error });
        }
    }
    


}

export const libro = new libroController();