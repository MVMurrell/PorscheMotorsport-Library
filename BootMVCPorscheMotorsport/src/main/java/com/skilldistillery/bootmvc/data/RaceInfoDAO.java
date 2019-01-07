package com.skilldistillery.bootmvc.data;

import java.util.List;

import com.skilldistillery.JPAPorscheMotorsport.entities.RaceInfo;
import com.skilldistillery.JPAPorscheMotorsport.entities.Racecars;

public interface RaceInfoDAO {

	public RaceInfo updateRI(int id, RaceInfo info);
	public boolean destroyRI(int id);
	public RaceInfo createRI(RaceInfo ri);
	public RaceInfo get(Racecars car, int id);
	public RaceInfo find(int id);
}
