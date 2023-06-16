package com.twinkle.JakSim.model.dao.timetable;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

public class TimetableDao {

    private JdbcTemplate jdbcTemplate;
    private String sql;

    public TimetableDao(DataSource ds) {
        jdbcTemplate = new JdbcTemplate(ds);
    }

    public Boolean isTimetable(int tIdx) {
        Boolean result = true;

        this.sql = "select * from timetable where t_idx = ?";

        try {
            jdbcTemplate.queryForObject(this.sql, new TimetableRowMapper(), tIdx);
        } catch (EmptyResultDataAccessException e) {
            System.out.println("there isn't any timetables");
            System.out.println(e);
            result = false;
        } catch (Exception e){
            System.out.println(e);
        }

        return result;
    }
}
