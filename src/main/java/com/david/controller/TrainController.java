package com.david.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.david.domain.Train;
import com.david.service.TrainService;

import java.util.List;

@Controller
@RequestMapping("/trains")
public class TrainController {

    @Autowired
    private TrainService trainService;

    @RequestMapping(value = "/queryTrainsList", method = RequestMethod.GET)
    public
    @ResponseBody
    List<Train> queryTrainsList() {
        return trainService.queryTrainsList();
    }

    @RequestMapping(value = "/getTrainById/{id}", method = RequestMethod.GET)
    public
    @ResponseBody
    Train getTrainById(@PathVariable("id") Long id) {
        return trainService.getTrainById(id);
    }

    @RequestMapping(value = "/saveTrain", method = RequestMethod.POST)
    public
    @ResponseBody
    void saveTrain(@RequestBody Train train) {
        trainService.saveTrain(train);
    }

    @RequestMapping(value = "/updateTrain", method = RequestMethod.PUT)
    public
    @ResponseBody
    void updateTrain(@RequestBody Train train) {
        trainService.updateTrain(train);
    }

    @RequestMapping(value = "/removeTrainById/{id}", method = RequestMethod.DELETE)
    public
    @ResponseBody
    void removeTrainById(@PathVariable("id") Long id) {
        trainService.removeTrainById(id);
    }

    @RequestMapping(value = "/removeTrainsList", method = RequestMethod.DELETE)
    public @ResponseBody void removeTrainsList() {
        trainService.removeTrainsList();
    }

    @RequestMapping("/trainsview")
    public String getTrainsView() {
        return "train/trainsview"; //return url location
    }

    @RequestMapping("/trainedit")
    public String getTrainUpdate() {
        return "train/trainedit";
    }
}