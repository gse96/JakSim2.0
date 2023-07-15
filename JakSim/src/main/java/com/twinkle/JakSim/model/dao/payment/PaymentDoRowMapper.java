package com.twinkle.JakSim.model.dao.payment;

import com.twinkle.JakSim.model.dto.payment.response.PaymentDo;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PaymentDoRowMapper implements RowMapper<PaymentDo> {
    @Override
    public PaymentDo mapRow(ResultSet rs, int rowNum) throws SQLException {
        PaymentDo paymentDo = new PaymentDo();

        paymentDo.setIdx(rs.getInt("P_IDX"));
        paymentDo.setUser_id(rs.getString("USER_ID"));
        paymentDo.setTp_idx(rs.getInt("TP_IDX"));
        paymentDo.setC_dt(rs.getString("P_C_DT"));
        paymentDo.setRefund(rs.getInt("P_REFUND"));
        if(rs.getString("P_M_DT") != null)
            paymentDo.setM_dt(rs.getString("P_M_DT"));
        paymentDo.setCnt(rs.getInt("P_PT_CNT"));
        paymentDo.setPeriod(rs.getInt("P_PT_PERIOD"));

        return paymentDo;
    }
}