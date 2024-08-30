import React, { useState, useEffect } from 'react';
import { Container, Title, Paper} from '@mantine/core';
import { useSession } from 'next-auth/react';
import axios from 'axios';

export function SystemInfo() {
  const backendUrl = process.env.NEXT_PUBLIC_URL as string;
  const now = new Date();

  const [time, setTime] = useState(new Date());
  useEffect(() => {
    const timerId = setInterval(() => {
      setTime(new Date()); // 時刻を更新
    }, 1000); // 1000msごとに実行

    return () => clearInterval(timerId);
  }, []);

    // 時刻を表示する
    const hour = time.getHours();
    const min = time.getMinutes();
    const sec = time.getSeconds();

  return (
    <Container size={9000} my={40}>
      <Title>システム情報</Title>
      
      <Paper withBorder shadow="md" p={10} mt={10} radius="md">            
            <p>システムバージョン</p>
            <p>　-フロントエンド:1.0</p>
            <p>　-バックエンド:</p>
            <p>　-データベース:</p>
            <p>バックエンドURL:{backendUrl}</p>
            <p>システム時間:{hour}時{min}分{sec}秒</p>
            
      </Paper>
    </Container>
  );
}
