'use client';
import { Demo } from '../../components/Storage/Storage';
import { HeaderSearch } from '../../components/Header/Header';
import { NavbarSearch } from '../../components/Navbar/Navbar';
import {Grid} from '@mantine/core';


export default function HomePage() {
    return (
      <>
      <Grid>
      <Grid.Col span={3}><NavbarSearch /></Grid.Col>
      <Grid.Col span={9}><Demo /></Grid.Col>
      </Grid>
      </>
    );
  }
