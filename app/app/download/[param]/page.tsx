"use client";
import { useRouter } from 'next/navigation'; // App Router用のuseRouterフック
import { useEffect, useState } from 'react';
import { Container, Title, Paper,Button } from '@mantine/core';
import { Download } from '../../../components/Download/download';
import { GlobalProvider } from '../../providers/GlobalContext';

export default function DynamicPage({ params }: { params: { param: string } }) {
  const { param } = params;

  return (
    <GlobalProvider>
      {/* <p>URLのパラメータ: {param}</p> */}
      <Download token={param}/>
    </GlobalProvider>
  );
}
