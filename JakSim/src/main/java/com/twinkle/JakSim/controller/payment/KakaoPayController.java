package com.twinkle.JakSim.controller.payment;

import com.twinkle.JakSim.model.dto.Enum.ErrorCode;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/payment")
@RequiredArgsConstructor
public class KakaoPayController {

    // 결제 진행 중 취소
    @GetMapping("/cancel")
    public String cancel() {
        return "content/payment/KakaoPayCancle";
    }
}
