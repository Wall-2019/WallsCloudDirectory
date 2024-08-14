'use client';

import { Button,useMantineColorScheme } from '@mantine/core';

export function TestButton() {
  const { setColorScheme } = useMantineColorScheme();

  return (
      <Button onClick={() => setColorScheme('light')}>Light</Button>
  );
}
