package com.support.informatique.web;
// Classe en attente de validation



//import javax.validation.Valid;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import com.support.informatique.entities.Materiel;
//import com.support.informatique.metier.MaterielService;
//@Controller
public class MaterielController {
//	@Autowired
//	private MaterielService materielService;
//	
//	
//	
//	@RequestMapping("/materiels")
//	public String materiels(ModelMap model) {
//		
//		model.addAttribute("materiels",materielService.findAll() );
//		return "materiels";
//	}
//	 
//    @RequestMapping(value = { "/newMateriel" }, method = RequestMethod.GET)
//    public String newProduit(ModelMap model) {
//        Materiel materiel = new Materiel();
//        model.addAttribute("materiel", materiel);
//        model.addAttribute("edit", false);
//        return "materiel";
//    }
// 
//    
//    @RequestMapping(value = { "/newMateriel" }, method = RequestMethod.POST)
//    public String saveProduit(@Valid Materiel materiel, BindingResult result,
//            ModelMap model) {
// 
//        if (result.hasErrors()) {
//            return "materiel";
//        }
//        materielService.save(materiel);
//        
//        return "redirect:/materiels";   
//    }
//    
//    /*
//     * This method will provide the medium to update an existing Materiel.
//     */
//    @RequestMapping(value = { "/edit-{idMateriel}-Materiel" }, method = RequestMethod.GET)
//    public String editTicket(@PathVariable int idMateriel, ModelMap model) {
//        Materiel materiel = materielService.findOne(idMateriel);
//        model.addAttribute("materiel", materiel);
//        model.addAttribute("edit", true);
//        return "materiel";
//    }
//     
//    /*
//     * This method will be called on form submission, handling POST request for
//     * updating Materiel in database. It also validates the materiel input
//     */
//    @RequestMapping(value = { "/edit-{idMateriel}-Materiel" }, method = RequestMethod.POST)
//    public String updateTicket(@Valid Materiel materiel, BindingResult result,
//            ModelMap model, @PathVariable int idMateriel) {
// 
//        if (result.hasErrors()) {
//            return "materiel";
//        }
// 
//       
// 
//        materielService.save(materiel);
// 
//        
//        return "redirect:/materiels";
//    }
//    @RequestMapping(value = {"delete-{idMateriel}-Materiel"}, method = RequestMethod.GET)
//    public String deleteTicket(@Valid Materiel materiel,@PathVariable int idMateriel) {
//    	materielService.deletebyId(idMateriel);
//    	return "redirect:/materiels";
//    }
}