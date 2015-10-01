package com.david.service.impl;

import com.david.domain.Train;
import com.david.service.TrainService;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

@Service("trainService")
public class TrainServiceImpl implements TrainService {
    private static List<Train> trainsList = new ArrayList<Train>();
    private static Long id = 0L;
    
    @Override
    public List<Train> queryTrainsList() {
        return trainsList;
    }

    @Override
    public Train getTrainById(Long id) {
        return findTrainById(id);
    }

    @Override
    public void saveTrain(Train train) {
        train.setId(++id);
        trainsList.add(train);
    }

    @Override
    public void removeTrainById(Long id) {
        Train foundTrain = findTrainById(id);
        if (foundTrain != null) {
            trainsList.remove(foundTrain);
        }
    }

    @Override
    public void removeTrainsList() {
        trainsList.clear();
        id = 0L;
    }

    @Override
    public void updateTrain(Train train) {
        Train foundTrain = findTrainById(train.getId());
        if (foundTrain != null) {
            trainsList.remove(foundTrain);
            trainsList.add(train);
        }
    }

    private Train findTrainById(Long id) {
        for (Train train : trainsList) {
            if (train.getId().longValue() == id.longValue()) {
                return train;
            }
        }

        return null;
    }

}
